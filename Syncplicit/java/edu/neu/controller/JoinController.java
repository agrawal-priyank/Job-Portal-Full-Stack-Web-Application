package edu.neu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.neu.pojo.Employer;
import edu.neu.pojo.Person;

@Controller
public class JoinController {

	@RequestMapping(value = "/personjoin.htm", method = RequestMethod.GET)
	public String initializePersonForm(@ModelAttribute("person") Person person, BindingResult result) {
		return "registerperson";
	}

	@RequestMapping(value = "/employerjoin.htm", method = RequestMethod.GET)
	public String initializeEmployerForm(@ModelAttribute("employer") Employer employer, BindingResult result) {
		return "registeremployer";
	}

}
