package edu.neu.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import edu.neu.exception.AdException;
import edu.neu.pojo.Person;

public class PersonDAO extends DAO {

    public PersonDAO() {
    }
    
    public Person create(Person person) throws Exception{
    	try {
            begin();
          
            System.out.println("Inside PersonDAO");          
  
            person.setRoleType("Person");            
            getSession().save(person);                         
                        
            commit();
            return person;
        } catch (HibernateException e) {
            rollback();            
            throw new AdException("Could not create user: " + e.getMessage());
        }    
    }
    
    public String update(Person person) throws Exception{
    	try {
            begin();
          
            /*System.out.println("Inside PersonDAO");
            Long userId = person.getUserId();
            Query query = getSession().createQuery("from Person where userId = :userId");
            query.setParameter("userId", userId);
            Person per = (Person) query.uniqueResult();*/
            
            Query query = getSession().createQuery("update Person set "
            		+ " firstName = :firstName, lastName = :lastName,"
            		+ " emailId = :emailId, contact = :contact,"
            		+ " streetAddress = :streetAddress, city = :city,"
            		+ "state = :state, country = :country where userId = :userId");
            query.setParameter("userId", person.getUserId());
            query.setParameter("firstName", person.getFirstName());
            query.setParameter("lastName", person.getLastName());
            query.setParameter("emailId", person.getEmailId());
            query.setParameter("contact", person.getContact());
            query.setParameter("streetAddress", person.getStreetAddress());
            query.setParameter("city", person.getCity());
            query.setParameter("state", person.getState());
            query.setParameter("country", person.getCountry());
            query.executeUpdate();
            
            //getSession().update(per);
                                                
            commit();
            return null;
        } catch (HibernateException e) {
            rollback();            
            throw new AdException("Could not create user: " + e.getMessage());
        }    
    }
    
	public List<Person> search(){
		try {
			begin();
			
			System.out.println("Inside PersonDAO");
			
			Query query = getSession().createQuery("from Person");
			List<Person> persons = query.list();
			System.out.println(persons);
			
			return persons;
			
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return null;
	}
	
    public String delete(Person person) throws Exception{
    	try {
            begin();
            System.out.println("Inside PersonDAO");
            getSession().delete(person);
                        
            commit();
            return null;
        } catch (HibernateException e) {
            rollback();            
            throw new AdException("Exception while deleting person: " + e.getMessage());
        }
    }
    
}