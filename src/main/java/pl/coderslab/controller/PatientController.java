package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Owner;
import pl.coderslab.model.Patient;
import pl.coderslab.model.Species;
import pl.coderslab.repository.OwnerRepository;
import pl.coderslab.repository.PatientRepository;
import pl.coderslab.repository.VisitRepository;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("patient")
public class PatientController {

    private final PatientRepository patientRepository;
    private final OwnerRepository ownerRepository;
    private final VisitRepository visitRepository;

    @Autowired
    public PatientController(PatientRepository patientRepository, OwnerRepository ownerRepository, VisitRepository visitRepository) {
        this.patientRepository = patientRepository;
        this.ownerRepository = ownerRepository;
        this.visitRepository = visitRepository;
    }

    @GetMapping("")
    public String patientList() {
        return "patientList";
    }


    @ModelAttribute("patients")
    public List<Patient> getPatients(){
        return patientRepository.findAll();
    }

    @ModelAttribute("owners")
    public List<Owner> getOwners(){
        return ownerRepository.findAll();
    }

    @GetMapping("/patientCard/{id}")
    public String patientcard(Model m, @PathVariable long id) {
        Patient patient = patientRepository.findPatientById(id);
//		List<Visit> visits = visitRepo.findAll();
//		m.addAttribute("visits", visits);
        m.addAttribute("patient", patient);
        return "patientCard";
    }



//???????????????????????????????????????????????
    @GetMapping("/add")
    public String patientAdd(Model model, @RequestParam long id) {
        Patient patient = new Patient();
        patient.setOwner(this.ownerRepository.findOwnerById(id));
        model.addAttribute("patient", patient);
        return "patientForm";
    }

    @PostMapping("/add")
    public String patientSave(@Valid @ModelAttribute Patient patient, BindingResult result) {
        if(result.hasErrors()) {
            return "patientForm";
        }
        patientRepository.save(patient);
        return "redirect:/owner";
    }

    @GetMapping("/edit/{id}")
    public String patientEdit(Model model, @PathVariable long id) {
        Patient patient = patientRepository.findPatientById(id);
        model.addAttribute("patient", patient);
        return "patientForm";
    }

    @PostMapping("/edit/{id}")
    public String patientUpdate(@Valid @ModelAttribute Patient patient, BindingResult result) {
        if (result.hasErrors()) {
            return "patientForm";
        }
        patientRepository.save(patient);
        return "redirect: patientCard/"+patient.getId();

    }


    @GetMapping("/delete/{id}")
    public String patientDelete(@PathVariable long id) {
        patientRepository.deleteById(id);
        return "redirect:/";
    }

    @ModelAttribute("species")
    public List<Species> species(){
        List<Species> species = new ArrayList<Species>();

        species.add(new Species("pies"));
        species.add(new Species("kot"));
        species.add(new Species("fretka"));
        species.add(new Species("królik"));
        species.add(new Species("świnka morska"));
        species.add(new Species("szczur"));
        species.add(new Species("chomik"));
        species.add(new Species("inny gryzoń"));
        species.add(new Species("żółw"));
        species.add(new Species("papużka falista"));
        species.add(new Species("inny ptak"));
        species.add(new Species("płaz"));
        species.add(new Species("pająk"));
        species.add(new Species("inne zwierzę"));

        return species;

    }
}
