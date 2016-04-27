package edu.neu.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import edu.neu.pojo.Educational;
import edu.neu.pojo.Person;

public class EducationalDAO extends DAO {
	
	public Educational create(Person person, Educational educational) throws Exception{
		try {
			begin();
			System.out.println("Inside EducationalDAO");
			
			educational.setPerson(person);
			person.getEducationalList().add(educational);			
		
			getSession().save(educational);
			commit();
			return educational;					
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return educational;
	}
	
	public List<Educational> search(){
		try {
			begin();
			
			System.out.println("Inside EducationalDAO");
			
			Query query = getSession().createQuery("from Educational");
			List<Educational> Educationals = query.list();
			System.out.println(Educationals);
			
			return Educationals;
			
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return null;
	}
}
