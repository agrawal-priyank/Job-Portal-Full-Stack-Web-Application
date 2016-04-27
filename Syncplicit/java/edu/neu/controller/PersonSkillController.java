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

import edu.neu.dao.PersonSkillDAO;
import edu.neu.pojo.Educational;
import edu.neu.pojo.Person;
import edu.neu.pojo.Professional;
import edu.neu.pojo.Skill;

@Controller
public class PersonSkillController {
	
	@RequestMapping(value = "/retrieveskill.htm", method = RequestMethod.GET)
	protected List<Skill> retrieveSkill(
			@ModelAttribute("skill") Skill skill, @ModelAttribute("person") Person person,
			@ModelAttribute("professional") Professional professional,
			@ModelAttribute("educational") Educational educational, BindingResult result, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws Exception {

		System.out.println("In PersonSkillController");
		try {
				request.getSession();
				
				PersonSkillDAO psDAO = new PersonSkillDAO();
				List<Skill> skills = psDAO.retrieve();
				//createJSONObject(skills);
				PrintWriter out = response.getWriter();
				out.write(createJSONObject(skills));								
			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return null;
	}
	
	@RequestMapping(value = "/addpersonskill.htm", method = RequestMethod.GET)
	protected String addPersonSkill(@ModelAttribute("person") Person person,
			@ModelAttribute("professional") Professional professional,
			@ModelAttribute("educational") Educational educational, BindingResult result, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws Exception {

		System.out.println("In PersonSkillController");
		try {
				
				String value = request.getParameter("skill");
				
				PersonSkillDAO psDAO = new PersonSkillDAO();
				psDAO.create(person, value);
				
				return "personhome";
				/*PrintWriter out = response.getWriter();
				out.println("success");*/
			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return null;
	}

	public String createJSONObject(List<Skill> skillDetails) {
        String message;
        JSONObject json = new JSONObject();
        try {
            // json.put("name", "student");
            JSONArray array = new JSONArray();

            for (Skill skill: skillDetails) {
                JSONObject item = new JSONObject();
                item.put("skillId", skill.getSkillId());
                item.put("skillName", skill.getSkillName());                
                array.put(item);
            }
            json.put("results", array);

        } catch (JSONException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        message = json.toString();
        System.out.println(message);
        return message;
    }

}