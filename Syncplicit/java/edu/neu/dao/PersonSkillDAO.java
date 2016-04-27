package edu.neu.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import edu.neu.exception.AdException;
import edu.neu.pojo.Person;
import edu.neu.pojo.Skill;

public class PersonSkillDAO extends DAO {
	
	public List<Skill> retrieve(){
		try {			
			begin();
			System.out.println("Inside PersonSkillDAO");
			
			Query query = getSession().createQuery("from Skill");

			List<Skill> skillResult = query.list();
			
			return skillResult;
			
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return null;
	}
	
	public void create(Person person, String value) throws AdException{
		try {
			begin();
			System.out.println("Inside PersonSkillDAO");
			
			Query query = getSession().createQuery("insetfrom Skill where "
					+ "skillName = :skill");
	        
			//query.setParameter("skill", value);
			query.setParameter("skillId", value );
			query.setParameter("personId", person.getUserId());
			Skill skill = (Skill)query.uniqueResult();
			
			person.getSkillList().add(skill);
			
			getSession().merge(person);
			
			commit();
		} catch (HibernateException e) {
			rollback();
			// TODO: handle exception
			//throw new AdException("Could not get user" + userName, e);
			throw new AdException("Exception while creating user: " + e.getMessage());
		}
	}

}