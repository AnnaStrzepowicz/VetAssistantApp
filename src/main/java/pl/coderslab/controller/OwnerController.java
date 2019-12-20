package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Owner;
import pl.coderslab.repository.OwnerRepository;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/owner")
public class OwnerController {

    private OwnerRepository ownerRepository;


    @Autowired
    public OwnerController(OwnerRepository ownerRepository) {
        this.ownerRepository = ownerRepository;
    }

   @ModelAttribute("owners")
   public List<Owner> getOwners(){
       return ownerRepository.findAll();
}

    @GetMapping("")
    public String ownerList(Model model) {
        model.addAttribute("owner", new Owner());
        return "ownerList";
    }


    @GetMapping("/add")
    public String ownerAdd(Model model) {
        Owner owner = new Owner();
        model.addAttribute(owner);
        return "ownerForm";
    }

    @PostMapping("/add")
    public String ownerSave(@Valid @ModelAttribute Owner owner, BindingResult result) {
        if(result.hasErrors()) {
            return "ownerForm";
        }
        ownerRepository.save(owner);
        return "redirect:/owner";
    }

    @GetMapping("/edit/{id}")
    public String ownerEdit(Model model, @PathVariable long id) {
        Owner owner = ownerRepository.findOwnerById(id);
        model.addAttribute("owner", owner);
        return "ownerForm";
    }

    @PostMapping("/edit/{id}")
    public String ownerUpdate(@Valid @ModelAttribute Owner owner, BindingResult result, HttpServletRequest rq) {
        if (result.hasErrors()) {
            return "ownerForm";
        }

        ownerRepository.save(owner);
        return "redirect:/owner";
    }


    @GetMapping("/delete/{id}")
    public String ownerDelete(@PathVariable long id) {
        ownerRepository.deleteById(id);
        return "redirect:/owner";
    }

}
