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
import edu.neu.dao.EmployerDAO;
import edu.neu.exception.AdException;
import edu.neu.pojo.Credential;
import edu.neu.pojo.Employer;
import edu.neu.pojo.Job;
import edu.neu.pojo.Professional;
import edu.neu.validator.EmployerValidator;

@Controller
public class EmployerController {

	@Autowired
	@Qualifier("employerValidator")
	private EmployerValidator employerValidator;

	@RequestMapping(value = "/addemployer.htm", method = RequestMethod.POST)
	protected String doRegisterAction(@ModelAttribute("employer") Employer employer, @ModelAttribute("Job") Job job,
			BindingResult result) throws Exception {

		System.out.println("In EmployerController");

		try {

			EmployerDAO employerDao = new EmployerDAO();
			employerDao.create(employer);

			// DAO.close();
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}

		return "login";
	}

	@RequestMapping(value = "/updateemployer.htm", method = RequestMethod.POST)
	protected String updateEmployer(@ModelAttribute("employer") Employer employer, @ModelAttribute("Job") Job job,
			BindingResult result, HttpSession session, HttpServletRequest request) throws Exception {

		System.out.println("In EmployerController");

		try {

			session = request.getSession();
			Employer emp = (Employer) session.getAttribute("employer");

			String employerName = request.getParameter("employerName");
			String streetAddress = request.getParameter("streetAddress");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String country = request.getParameter("country");
			String websiteUrl = request.getParameter("websiteUrl");
			Long userId = emp.getUserId();

			EmployerDAO eDao = new EmployerDAO();
			eDao.update(employerName, streetAddress, city, state, country, websiteUrl, userId);

			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}

		return "employerprofile";
	}

	@RequestMapping(value = "/retrieveemployer.htm", method = RequestMethod.GET)
	protected List<Professional> retrieveProfessional(@ModelAttribute("employer") Employer employer,
			@ModelAttribute("Job") Job job, BindingResult result, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws Exception {

		System.out.println("In EmployerController");
		try {
			request.getSession();

			EmployerDAO eDao = new EmployerDAO();
			List<Employer> employers = eDao.search();
			PrintWriter out = response.getWriter();
			out.write(createJSONObject(employers));
			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return null;
	}

	public String createJSONObject(List<Employer> employers) {
		String message;
		JSONObject json = new JSONObject();
		try {

			JSONArray array = new JSONArray();
			for (Employer employer : employers) {
				JSONObject item = new JSONObject();
				item.put("employerName", employer.getEmployerName());
				item.put("websiteUrl", employer.getWebsiteUrl());
				item.put("streetAddress", employer.getStreetAddress());
				item.put("city", employer.getCity());
				item.put("state", employer.getState());
				item.put("country", employer.getCountry());
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

	@RequestMapping(value = "/deleteemployer.htm", method = RequestMethod.GET)
	protected String deleteEmployer(@ModelAttribute("credential") Credential credential,
			@ModelAttribute("employer") Employer employer, HttpServletRequest request, BindingResult result)
			throws Exception {

		System.out.println("In EmployerController");

		try {

			HttpSession employerSession = request.getSession();
			Employer emp = (Employer) employerSession.getAttribute("employer");

			EmployerDAO employerDao = new EmployerDAO();
			employerDao.delete(emp);

			return "login";
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}

		return "login";
	}

/*	
	 * @RequestMapping(method = RequestMethod.GET) public String
	 * initializeForm(@ModelAttribute("employer") Employer
	 * employer, @ModelAttribute("job") Job job) { return "success"; }
	 */
}