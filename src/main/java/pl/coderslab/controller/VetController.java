package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Vet;
import pl.coderslab.repository.VetRepository;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("vet")
public class VetController {

    private final VetRepository vetRepository;

    @Autowired
    public VetController(VetRepository vetRepository) {
        this.vetRepository = vetRepository;
    }

    @GetMapping("")
    public String vetList() {
        return "vetList";
    }

    @ModelAttribute("vets")
    public List<Vet> getVets(){
        return vetRepository.findAll();
    }

    @GetMapping("/add")
    public String vetAdd(Model model) {
        Vet vet = new Vet();
        model.addAttribute(vet);
        return "vetForm";
    }

    @PostMapping("/add")
    public String vetSave(@Valid @ModelAttribute Vet vet, BindingResult result, HttpServletRequest rq) {
        if(result.hasErrors()) {
            return "vetForm";
        }
        vetRepository.save(vet);
        return "redirect:/vet";
    }

    @GetMapping("/edit/{id}")
    public String vetEdit(Model model, @PathVariable long id) {
        Vet vet = vetRepository.findVetById(id);
        model.addAttribute("vet", vet);
        return "vetForm";
    }

    @PostMapping("/edit/{id}")
    public String vetUpdate(@Valid @ModelAttribute Vet vet, BindingResult result, HttpServletRequest rq) {
        if (result.hasErrors()) {
            return "vetForm";
        }

        vetRepository.save(vet);
        return "redirect:/vet";
    }


    @GetMapping("/delete/{id}")
    public String vetDelete(@PathVariable long id) {
        vetRepository.deleteById(id);
        return "redirect:/vet";
    }

}
