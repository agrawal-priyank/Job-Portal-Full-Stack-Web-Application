package edu.neu.dao;

import org.hibernate.HibernateException;

import edu.neu.exception.AdException;
import edu.neu.pojo.Skill;

public class SkillDAO extends DAO {

	public Skill create(Skill skill)throws AdException{
		
		try {
			begin();
			System.out.println("Inside SkillDAO");			

			getSession().save(skill);
			
			commit();
			return skill;
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return skill;		
	}
}
