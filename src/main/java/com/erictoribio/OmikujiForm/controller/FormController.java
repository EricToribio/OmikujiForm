package com.erictoribio.OmikujiForm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class FormController {
	
	@RequestMapping("")
	public String form() {
		return "index.jsp";	
	}

	@RequestMapping(value="/submit/data", method=RequestMethod.POST)
	public String formData(HttpSession session,
			@RequestParam(value="number") Integer number,
			@RequestParam(value="city") String city,
			@RequestParam(value="name") String name,
			@RequestParam(value="hobby")String hobby,
			@RequestParam(value="thing")String thing,
			@RequestParam(value="nice") String nice
			) {
		session.setAttribute("name", name);
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("nice", nice);
		
		return "redirect:/omikuji/show";	
	}
	@RequestMapping("/show")
	public String displayInfo(HttpSession session, Model model) {
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("number", session.getAttribute("number"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("hobby", session.getAttribute("hobby"));
		model.addAttribute("thing", session.getAttribute("thing"));
		model.addAttribute("nice", session.getAttribute("nice"));
		return "display.jsp";	
	}
}
