package edu.neu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.neu.dao.LoginDAO;
import edu.neu.pojo.Credential;
import edu.neu.pojo.Educational;
import edu.neu.pojo.Employer;
import edu.neu.pojo.Job;
import edu.neu.pojo.Person;
import edu.neu.pojo.Professional;
import edu.neu.pojo.Skill;

@Controller
public class LoginController {

	@RequestMapping(value = "/login.htm", method = RequestMethod.POST)
	public String doLoginAction(@ModelAttribute("credential") Credential credential, @ModelAttribute("job") Job job,
			@ModelAttribute("educational") Educational educational,
			@ModelAttribute("professional") Professional professional,
		    @ModelAttribute("skill") Skill skill, Model model,
			BindingResult result, HttpServletRequest request, HttpSession session) {

		System.out.println("In LoginController");

		try {

			Credential cred = new Credential();

			LoginDAO loginDao = new LoginDAO();
			cred = loginDao.login(credential.getUserName(), credential.getPassword());

			if (cred != null) {
				if (cred.getRoleType().equalsIgnoreCase("Admin")) {
					session = request.getSession();
					session.setAttribute("credential", cred);
					return "adminhome";
				}
				if (cred.getRoleType().equalsIgnoreCase("Employer")) {
					Employer employer = (Employer) cred;
					model.addAttribute("employer", employer);
					session = request.getSession();
					session.setAttribute("employer", employer);
					session.setAttribute("credential", cred);
					session.setAttribute("job", job);
					return "employerhome";
				}
				if (cred.getRoleType().equalsIgnoreCase("Person")) {
					Person person = (Person) cred;
					model.addAttribute("person", person);
					session = request.getSession();
					session.setAttribute("person", person);
					session.setAttribute("credential", cred);
					session.setAttribute("job", job);
					return "personhome";
				}
			}

		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return null;
	}

	@RequestMapping(value = "/login.htm", method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("job") Job job,
			@ModelAttribute("professional") Professional professional,
			@ModelAttribute("educational") Educational educational, @ModelAttribute("skill") Skill skill,
			BindingResult result) {
		return "personhome";
	}

}