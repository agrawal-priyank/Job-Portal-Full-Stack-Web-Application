package edu.neu.controller;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.HibernateException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.neu.dao.SkillDAO;
import edu.neu.pojo.Educational;
import edu.neu.pojo.Skill;

@Controller
public class SkillController {
	
	/*private static JSON json = new JSON();*/

	@RequestMapping(value = "/addskill.htm", method = RequestMethod.POST)
	protected String addJob(@ModelAttribute("skill") Skill skill,
			@ModelAttribute("educational") Educational educational, HttpServletRequest request, 
			BindingResult result) throws Exception {

		System.out.println("In SkillController");

		try {

			SkillDAO sDAO = new SkillDAO();
			sDAO.create(skill);

			// DAO.close();
		} catch (HibernateException e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return "adminhome";
	}

	@RequestMapping(value = "/addskill.htm", method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("skill") Skill skill,
			@ModelAttribute("educational") Educational educational, BindingResult result) {
		return "adminhome";
	}
	
	/*@RequestMapping(value="getskilllist.htm", method = RequestMethod.GET)
	public @ResponseBody List<String> getSkillList(@RequestParam("termSkill") String query){		
		List<String> skillList = json.getSkills(query);		
		return skillList;				
	}*/

}
