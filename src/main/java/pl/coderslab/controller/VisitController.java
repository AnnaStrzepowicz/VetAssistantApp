package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Patient;
import pl.coderslab.model.Vet;
import pl.coderslab.model.Visit;
import pl.coderslab.repository.PatientRepository;
import pl.coderslab.repository.VetRepository;
import pl.coderslab.repository.VisitRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("visit")
public class VisitController {

    private final VisitRepository visitRepository;
    private final PatientRepository patientRepository;
    private final VetRepository vetRepository;

    @Autowired
    public VisitController(VisitRepository visitRepository, PatientRepository patientRepository, VetRepository vetRepository) {
        this.visitRepository = visitRepository;
        this.patientRepository = patientRepository;
        this.vetRepository = vetRepository;
    }

    @ModelAttribute("visits")
    public List<Visit> getVisits(){
        return visitRepository.findAll();
    }

    @ModelAttribute("patients")
    public List<Patient> getPatients(){
        return patientRepository.findAll();
    }

    @ModelAttribute("vets")
    public List<Vet> getVets(){
        return vetRepository.findAll();
    }


    @GetMapping("/add")
    public String visitAdd(Model model, @RequestParam long id) {
        Visit visit = new Visit();
        visit.setPatient(this.patientRepository.findPatientById(id));
        model.addAttribute("visit", visit);
        return "visitForm";
    }

    @PostMapping("/add")
    public String visitSave(@Valid @ModelAttribute Visit visit, BindingResult result) {
        if(result.hasErrors()) {
            return "visitForm";
        }
        visitRepository.save(visit);
        return "redirect:/patient/patientCard/"+visit.getPatient().getId();
    }

    @GetMapping("/edit/{id}")
    public String visitEdit(Model model, @PathVariable long id) {
        Visit visit = visitRepository.findVisitById(id);
        model.addAttribute("visit", visit);
        return "visitForm";
    }

    @PostMapping("/edit/{id}")
    public String visitUpdate(@Valid @ModelAttribute Visit visit, BindingResult result) {
        if (result.hasErrors()) {
            return "visitForm";
        }
        visitRepository.save(visit);
        return "redirect:/patientCard";
    }


    @GetMapping("/delete/{id}")
    public String visitDelete(@PathVariable long id) {
        visitRepository.deleteById(id);
        return "redirect:/";
    }

}
