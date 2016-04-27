package edu.neu.controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.neu.dao.ProfessionalDAO;
import edu.neu.pojo.Person;
import edu.neu.pojo.Educational;
import edu.neu.pojo.Job;
import edu.neu.pojo.Professional;
import edu.neu.pojo.Skill;

@Controller
public class ProfessionalController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("dd/MM/yyyy"), true, 10));
	}

	@RequestMapping(value = "/addpro.htm", method = RequestMethod.POST)
	protected String addProfession(@ModelAttribute("person") Person person,
			@ModelAttribute("educational") Educational educational,
			@ModelAttribute("professional") Professional professional, @ModelAttribute("skill") Skill skill,
			BindingResult result, Model model, HttpServletRequest request, HttpSession session) throws Exception {

		System.out.println("In LoginController");

		try {

			HttpSession personSession = request.getSession();

			Person per = (Person) personSession.getAttribute("person");

			ProfessionalDAO pDAO = new ProfessionalDAO();
			pDAO.create(professional, per);

			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return "personhome";
	}

	@RequestMapping(value = "/retrieveprofession.htm", method = RequestMethod.GET)
	protected List<Professional> retrieveProfessional(@ModelAttribute("Job") Job job,
			@ModelAttribute("skill") Skill skill, @ModelAttribute("person") Person person,
			@ModelAttribute("professional") Professional professional,
			@ModelAttribute("educational") Educational educational, BindingResult result, Model model,
			HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {

		System.out.println("In ProfessionalController");
		try {
			request.getSession();

			ProfessionalDAO pDao = new ProfessionalDAO();
			List<Professional> professionals = pDao.search();
			PrintWriter out = response.getWriter();
			out.write(createJSONObject(professionals));
			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return null;
	}

	public String createJSONObject(List<Professional> professionals) {
		String message;
		JSONObject json = new JSONObject();
		try {

			JSONArray array = new JSONArray();
			for (Professional professional : professionals) {
				JSONObject item = new JSONObject();
				item.put("companyName", professional.getCompanyName());
				item.put("designation", professional.getDesignation());
				item.put("startDate", professional.getStartDate());
				item.put("endDate", professional.getEndDate());
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

	@RequestMapping(value = "/addpro.htm", method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("person") Person person, @ModelAttribute("professional") Professional professional,
			@ModelAttribute("educational") Educational educational, @ModelAttribute("skill") Skill skill,
			BindingResult result) {
		return "personhome";
	}

}
