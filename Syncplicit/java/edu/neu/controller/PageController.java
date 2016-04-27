  package edu.neu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.neu.pojo.Educational;
import edu.neu.pojo.Employer;
import edu.neu.pojo.Job;
import edu.neu.pojo.Person;
import edu.neu.pojo.Professional;
import edu.neu.pojo.Skill;

@Controller
public class PageController {

	@RequestMapping(value = "/personhome.htm", method = RequestMethod.GET)
	public String personhome(/*@ModelAttribute("person") Person person,*/
			@ModelAttribute("educational") Educational educational,
			@ModelAttribute("professional") Professional professional,
			@ModelAttribute("skill") Skill skill, BindingResult result,
			HttpSession session, HttpServletRequest request, Model model) {
			session = request.getSession();
			Person person = (Person) session.getAttribute("person");        
			model.addAttribute("person", person);
		return "personhome";
	}

	@RequestMapping(value = "/personprofile.htm", method = RequestMethod.GET)
	public String personprofile(/*@ModelAttribute("person") Person person,*/
			@ModelAttribute("educational") Educational educational,
			@ModelAttribute("professional") Professional professional,
			@ModelAttribute("skill") Skill skill, BindingResult result, 
			HttpSession session, HttpServletRequest request, Model model) {
			
			session = request.getSession();
			Person person = (Person) session.getAttribute("person");        
			model.addAttribute("person", person);
			return "personprofile";
	}

	@RequestMapping(value = "/employerhome.htm", method = RequestMethod.GET)
	public String employerhome(@ModelAttribute("employer") Employer employer, @ModelAttribute("job") Job job,
			Model model, HttpServletRequest request, HttpSession session) {
			session = request.getSession();
			Employer emp = (Employer) session.getAttribute("employer");        
			model.addAttribute("employer", emp);	
			return "employerhome";
	}

	@RequestMapping(value = "/employerprofile.htm", method = RequestMethod.GET)
	public String employerprofile(/*@ModelAttribute("employer") Employer employer,*/ @ModelAttribute("job") Job job,
			Model model, HttpServletRequest request, HttpSession session) {
			session = request.getSession();
			Employer employer = (Employer) session.getAttribute("employer");        
			model.addAttribute("employer", employer);				
			return "employerprofile";
	}

}
