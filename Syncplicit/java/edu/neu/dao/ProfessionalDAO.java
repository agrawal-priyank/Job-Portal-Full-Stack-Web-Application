package edu.neu.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import edu.neu.exception.AdException;
import edu.neu.pojo.Person;
import edu.neu.pojo.Professional;

public class ProfessionalDAO extends DAO {

	public Professional create(Professional professional, Person person)throws AdException{
		
		try {
			begin();
			System.out.println("Inside ProfessionalDAO");			

			professional.setPerson(person);
			person.getProfessionalList().add(professional);
			
			getSession().save(professional);
			
			commit();
			return professional;
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return professional;		
	}
	
	public List<Professional> search(){
		try {
			begin();
			
			System.out.println("Inside ProfessionalDAO");
			
			Query query = getSession().createQuery("from Professional");
			List<Professional> professionals = query.list();
			System.out.println(professionals);
			
			return professionals;
			
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return null;
	}
}
