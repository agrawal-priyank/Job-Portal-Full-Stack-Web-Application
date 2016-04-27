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

import edu.neu.dao.JobDAO;
import edu.neu.exception.AdException;
import edu.neu.pojo.Educational;
import edu.neu.pojo.Employer;
import edu.neu.pojo.Job;
import edu.neu.pojo.Person;
import edu.neu.pojo.Professional;
import edu.neu.pojo.Skill;

@Controller
public class JobController {

	@RequestMapping(value = "/addjob.htm", method = RequestMethod.POST)
	protected String addJob(@ModelAttribute("job") Job job, HttpServletRequest request) throws Exception {

		System.out.println("In JobController");

		try {

			HttpSession employerSession = request.getSession();

			Employer employer = (Employer) employerSession.getAttribute("employer");
			JobDAO jobDao = new JobDAO();
			jobDao.create(job, employer);

			// DAO.close();
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return "employerhome";
	}

	@RequestMapping(value = "/retrievejob.htm", method = RequestMethod.GET)
	protected List<Job> retrieveJob(@ModelAttribute("Job") Job job, @ModelAttribute("skill") Skill skill,
			@ModelAttribute("person") Person person, @ModelAttribute("professional") Professional professional,
			@ModelAttribute("educational") Educational educational, BindingResult result, Model model,
			HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {

		System.out.println("In JobController");
		try {
			request.getSession();

			JobDAO jdDao = new JobDAO();
			List<Job> jobs = jdDao.search();
			PrintWriter out = response.getWriter();
			out.write(createJSONObject(jobs));
			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return null;
	}

	public String createJSONObject(List<Job> jobs) {
		String message;
		JSONObject json = new JSONObject();
		try {

			JSONArray array = new JSONArray();
			for (Job job : jobs) {
				JSONObject item = new JSONObject();
				item.put("jobId", job.getJobId());
				item.put("title", job.getTitle());
				item.put("responsibilities", job.getResponsibilities());
				item.put("qualifications", job.getQualifications());
				item.put("location", job.getLocation());
				item.put("employerName", job.getEmployer().getEmployerName());
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

	@RequestMapping(value = "/updatejob.htm", method = RequestMethod.GET)
	protected String updateJob(@ModelAttribute("job") Job job, HttpServletRequest request, HttpSession session,
			HttpServletResponse response) throws Exception {

		System.out.println("In JobController");

		try {
			int row = -1;
			String jobId = request.getParameter("jobId");

			System.out.println("onUpdateJob - jobId : " + jobId);

			if (jobId != null) {
				JobDAO jobDao = new JobDAO();
				Job jobs = jobDao.getJob(Long.parseLong(jobId));
				jobDao.update(jobs);
			}
			response.getWriter().write(row > 0 ? "success" : "failed");

			// DAO.close();
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return "employerhome";
	}

	@RequestMapping(value = "/deletejob.htm", method = RequestMethod.GET)
	protected String deleteJob(@ModelAttribute("job") Job job, HttpServletRequest request, HttpSession session,
			HttpServletResponse response) throws Exception {

		System.out.println("In JobController");

		try {

			String jobId = request.getParameter("jobId");
			HttpSession employerSession = request.getSession();

			Employer employer = (Employer) employerSession.getAttribute("employer");

			System.out.println("onDeleteJob - jobId : " + jobId);

			if (jobId != null) {
				JobDAO jobDao = new JobDAO();
				Job jobs = jobDao.getJob(Long.parseLong(jobId));
				jobDao.delete(jobs, employer);
				return "employerhome";
			}

			response.getWriter().write("success");

			// DAO.close();
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return "employerhome";
	}
	
	@RequestMapping(value = "/applyjob.htm", method = RequestMethod.GET)
	protected String applyJob(@ModelAttribute("job") Job job, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("In JobController");

		try {
			
			String jobId = request.getParameter("jobId");
			HttpSession personSession = request.getSession();

			Person person = (Person) personSession.getAttribute("person");
			
			System.out.println("onApplyJob - jobId : " + jobId);

			if (jobId != null) {
				JobDAO jobDao = new JobDAO();
				Job jobs = jobDao.getJob(Long.parseLong(jobId));
				jobDao.apply(jobs, person);				
			}

			response.getWriter().write("success");			
			// DAO.close();
		} catch (AdException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return null;
	}

}
