package trisha.it.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {

	@GetMapping({"/","/index","/home"})
	public String getHome(Model model) {

		model.addAttribute("tital", "Home");
		model.addAttribute("userClickOnHome", true);

		return "/index";
	}
	
	@GetMapping("/about_us")
	public String getAboutUs(Model model) {
		
		model.addAttribute("tital", "About Us");
		model.addAttribute("userClickOnAboutUs", true);
		return "/index";
	}
	
	@GetMapping("/login")
	public String getLogin(Model model) {
		
		model.addAttribute("tital", "Login");
		model.addAttribute("userClickOnLogin", true);
		return "/index";
	}
	
	@GetMapping("/contact_us")
	public String getContactUs(Model model) {
		
		model.addAttribute("tital", "Contact Us");
		model.addAttribute("userClickOnContactUs", true);
		return "/index";
	}
	
}
