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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.neu.dao.EducationalDAO;
import edu.neu.pojo.Educational;
import edu.neu.pojo.Job;
import edu.neu.pojo.Person;
import edu.neu.pojo.Professional;
import edu.neu.pojo.Skill;

@Controller
public class EducationalController {

	@RequestMapping(value = "/addpersonedu.htm", method = RequestMethod.POST)
	protected String addPersonEdu(@ModelAttribute("educational") Educational educational,
			@ModelAttribute("person") Person person, @ModelAttribute("professional") Professional professional,
			@ModelAttribute("skill") Skill skill, BindingResult result, Model model, HttpServletRequest request,
			HttpSession session) throws Exception {

		System.out.println("In EducationalController");

		try {

			HttpSession personSession = request.getSession();

			Person per = (Person) personSession.getAttribute("person");

			EducationalDAO peDAO = new EducationalDAO();
			peDAO.create(per, educational);

			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return "personhome";
	}

	@RequestMapping(value = "/retrieveeducational.htm", method = RequestMethod.GET)
	protected List<Professional> retrieveProfessional(@ModelAttribute("Job") Job job,
			@ModelAttribute("skill") Skill skill, @ModelAttribute("person") Person person,
			@ModelAttribute("professional") Professional professional,
			@ModelAttribute("educational") Educational educational, BindingResult result, Model model,
			HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {

		System.out.println("In EducationalController");
		try {
			request.getSession();

			EducationalDAO eDao = new EducationalDAO();
			List<Educational> educationals = eDao.search();
			PrintWriter out = response.getWriter();
			out.write(createJSONObject(educationals));
			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return null;
	}

	public String createJSONObject(List<Educational> educationals) {
		String message;
		JSONObject json = new JSONObject();
		try {

			JSONArray array = new JSONArray();
			for (Educational educational : educationals) {
				JSONObject item = new JSONObject();
				item.put("degreeName", educational.getDegreeName());
				item.put("courseName", educational.getCourseName());
				item.put("schoolName", educational.getSchoolName());
				item.put("startedDate", educational.getStartedDate());
				item.put("endedDate", educational.getEndedDate());
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

	@RequestMapping(value = "/addpersonedu.htm", method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("person") Person person, @ModelAttribute("professional") Professional professional,
			@ModelAttribute("educational") Educational educational, @ModelAttribute("skill") Skill skill,
			BindingResult result) {
		return "personhome";
	}

}
