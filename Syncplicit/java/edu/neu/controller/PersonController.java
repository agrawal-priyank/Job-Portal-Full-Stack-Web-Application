package edu.neu.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.neu.dao.PersonDAO;
import edu.neu.exception.AdException;
import edu.neu.pojo.Educational;
import edu.neu.pojo.Person;
import edu.neu.pojo.Professional;
import edu.neu.pojo.Skill;
import edu.neu.validator.PersonValidator;

@Controller
public class PersonController {

	@Autowired
	@Qualifier("personValidator")
	private PersonValidator personValidator;

	@RequestMapping(value = "/addperson.htm", method = RequestMethod.POST)
	protected String doRegisterAction(@ModelAttribute("person") Person person, BindingResult result) throws Exception {

		System.out.println("In RegisterPersonController");

		try {

			PersonDAO personDao = new PersonDAO();
			personDao.create(person);

			// DAO.close();
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return "login";
	}

	@RequestMapping(value = "/retrieveperson.htm", method = RequestMethod.GET)
	protected List<Professional> retrieveProfessional(@ModelAttribute("person") Person person, BindingResult result,
			Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		System.out.println("In PersonController");
		try {
			request.getSession();

			PersonDAO pDao = new PersonDAO();
			List<Person> persons = pDao.search();
			PrintWriter out = response.getWriter();
			out.write(createJSONObject(persons));
			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return null;
	}

	public String createJSONObject(List<Person> persons) {
		String message;
		JSONObject json = new JSONObject();
		try {

			JSONArray array = new JSONArray();
			for (Person person : persons) {
				JSONObject item = new JSONObject();
				item.put("personName", person.getFirstName() + person.getLastName());
				item.put("emailId", person.getEmailId());
				item.put("contact", person.getContact());
				item.put("streetAddress", person.getStreetAddress());
				item.put("city", person.getCity());
				item.put("state", person.getState());
				item.put("country", person.getCountry());
				array.put(item);
			}
			json.put("results", array);
			message = json.toString();
			System.out.println(message);
			return message;

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/deleteperson.htm", method = RequestMethod.GET)
	protected String deletePerson(@ModelAttribute("person") Person person, HttpServletRequest request,
			BindingResult result) throws Exception {

		System.out.println("In PersonController");

		try {

			HttpSession personSession = request.getSession();
			Person per = (Person) personSession.getAttribute("person");

			PersonDAO pDao = new PersonDAO();
			pDao.delete(per);

			return "login";
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}

		return "login";
	}

	@RequestMapping(value = "/updateperson.htm", method = RequestMethod.POST)
	protected String addJob(@ModelAttribute("person") Person person, 
			@ModelAttribute("professional") Professional professional, 
			@ModelAttribute("educational") Educational educational, 
			@ModelAttribute("skil") Skill skill, HttpServletRequest request) throws Exception {

		System.out.println("In UpdateController");

		try {

			PersonDAO pDao = new PersonDAO();
			pDao.update(person);

			// DAO.close();
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return "personhome";
	}

}