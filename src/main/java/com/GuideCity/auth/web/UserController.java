package com.GuideCity.auth.web;

import com.GuideCity.auth.model.Celebrite;
import com.GuideCity.auth.model.Lieu;
import com.GuideCity.auth.model.Monument;
import com.GuideCity.auth.model.User;
import com.GuideCity.auth.service.MonumentService;
import com.GuideCity.auth.service.SecurityService;
import com.GuideCity.auth.service.UserService;
import com.GuideCity.auth.validator.UserValidator;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private MonumentService monumentService;


    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;
    @GetMapping(path = "/ListDepartement")
	public String listdepartement(@RequestParam(name = "name", required = false, defaultValue = "anonymous") String name,
			Model model) throws Exception {
		model.addAttribute("name", name);
		model.addAttribute("mesdepartements", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).findAllDep());
		model.addAttribute("mescommunes", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).findAllcommune());
		model.addAttribute("mesregions", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).findAllregion());
		return "departement";
	}
    @PostMapping(path="/calcul")
    public String calcul(@RequestParam  String  monument1,RedirectAttributes attributes,@RequestParam  String  monument2) throws Exception {
    	Monument m1= new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).mounument(monument1);
    	Monument m2= new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).mounument(monument2);
		attributes.addFlashAttribute("dist", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).distFrom(m1, m2));
		
        return "redirect:/ListMonument";
    }
	@GetMapping(path = "/recherche")
	public String recherche(Model model){
		return "recherche";
	}
	@PostMapping(path="/rechercher")                     // it only support port method
    public String saveDetails(@RequestParam(name = "name", required = false, defaultValue = "anonymous") String name,RedirectAttributes attributes,@RequestParam String ville,Model model) {
		
		attributes.addFlashAttribute("monumentschercher", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).mounumentparcommune(ville));
		
        return "redirect:/recherche";
    }
	/*@PostMapping(path="/rechercher")
	 
	public String recherchemonument(@RequestParam(name = "name", required = false, defaultValue = "anonymous") String name,RedirectAttributes attributes,@RequestParam String ville,Model model) {
		
		attributes.addFlashAttribute("monumentschercher", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).mounumentparcommune(ville));
		
		return "redirect:/rechercher";
		
	}*/
	@GetMapping(path = "/ListMonument")
	public String list(@RequestParam(name = "name", required = false, defaultValue = "anonymous") String name,
			Model model) {
		model.addAttribute("name", name);
		model.addAttribute("monuments", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).findAll());
		return "edifices";
	}
	
    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }
    @GetMapping("/admin")
    public String admin(Model model) throws Exception {
    	model.addAttribute("monuments", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).findAll());
    	model.addAttribute("monumentForm", new Monument());
    	model.addAttribute("celebriteForm", new Celebrite());
    	model.addAttribute("celebrite", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).findAllceleb());
    	
    	
    	//############""Lieu""#############"
    	model.addAttribute("lieuForm", new Lieu());
    	model.addAttribute("lieux", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).findAllcommune());
    	
    	//############## Departement ###################
    	model.addAttribute("departements", new MonumentService(Persistence.createEntityManagerFactory("bdprojet").createEntityManager()).findAllDep());
        return "admin";
    }
    @PostMapping("/admin2")
    public String suprim(@RequestParam  String  monument1,RedirectAttributes attributes) throws Exception {
       
    	//attributes.addFlashAttribute("supp",monument1);
    	monumentService.deleteById(monument1);
        return "redirect:/admin";
    }
    @PostMapping("/admin")
    public String ajout(@ModelAttribute("monumentForm") Monument monumentForm,@ModelAttribute("celebriteForm") Celebrite celebriteForm, BindingResult bindingResult) throws Exception {
    
    	
       monumentService.save(monumentForm);

        return "redirect:/admin";
    }
    
    //~###############" Celebrite #######################
    @PostMapping("/admincelebrite")
    public String ajoutcelebrite(@ModelAttribute("celebriteForm") Celebrite celebriteForm, BindingResult bindingResult) throws Exception {
    
    	 monumentService.save(celebriteForm);
       // monumentService.save(monumentForm);

        return "redirect:/admin";
    }
    @PostMapping("/admincelebritesupprimer")
    public String suprimCelebrite(@RequestParam  int  celebrite1,RedirectAttributes attributes) throws Exception {
    	for (Celebrite i : monumentService.unecelebrite(celebrite1)) {
    		monumentService.delete(i);
    	  }
    	
    	//attributes.addFlashAttribute("supp",monumentService.unecelebrite(celebrite1));
    	//monumentService.deleteById(celebrite1);
        return "redirect:/admin";
    }
 
    
    //################## Lieu ####################################"
    @PostMapping("/adminlieu")
    public String ajoutlieu(@ModelAttribute("lieuForm") Lieu lieuForm, BindingResult bindingResult) throws Exception {
    
    	 monumentService.save(lieuForm);
       // monumentService.save(monumentForm);

        return "redirect:/admin#lieu";
    }
    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }
    
    
    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @GetMapping({"/", "/welcome"})
    public String welcome(Model model) {
        return "index";
    }
}
