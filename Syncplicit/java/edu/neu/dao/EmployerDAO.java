package edu.neu.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import edu.neu.exception.AdException;
import edu.neu.pojo.Employer;

public class EmployerDAO extends DAO {

    public EmployerDAO() {
    }
    
    public Employer create(Employer employer) throws Exception{
    	try {
            begin();
            System.out.println("Inside EmployerDAO");
            
            employer.setRoleType("Employer");            
            getSession().save(employer);
                        
            commit();
            return employer;
        } catch (HibernateException e) {
            rollback();            
            throw new AdException("Exception while creating user: " + e.getMessage());
        }
    }
    
	public List<Employer> search(){
		try {
			begin();
			
			System.out.println("Inside EmployerDAO");
			
			Query query = getSession().createQuery("from Employer");
			List<Employer> employers = query.list();
			System.out.println(employers);
			
			return employers;
			
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return null;
	}
	
    public String delete(Employer employer) throws Exception{
    	try {
            begin();
            System.out.println("Inside EmployerDAO");
            
            Query query = getSession().createQuery("delete from Credential where userId = :userId ");
            query.setParameter("userId", employer.getUserId());                       
        
            /*getSession().delete(credential);*/

            commit();
            return null;
        } catch (HibernateException e) {
            rollback();            
            throw new AdException("Exception while deleting employer: " + e.getMessage());
        }
    }
    
    public String update(String employerName, String streetAddress, String city, String state, 
    		String country, String websiteUrl, Long userId) throws Exception{
    	try {
            begin();            
            System.out.println("Inside EmployerDAO");
            
            Query query = getSession().createQuery("update Employer set employerName = :employerName,"
            		+ "streetAddress = :streetAddress, city = :city, state = :state,"
            		+ "country = :country, websiteUrl = :websiteUrl where userId = :userId ");
            query.setParameter("userId", userId);
            query.setParameter("employerName", employerName);
            query.setParameter("streetAddress", streetAddress);
            query.setParameter("city", city);
            query.setParameter("state", state);
            query.setParameter("country", country);
            query.setParameter("websiteUrl", websiteUrl);       
            query.executeUpdate();
            
            //getSession().save(employer);
            commit();
            return null;
        } catch (HibernateException e) {
            rollback();            
            throw new AdException("Exception while deleting employer: " + e.getMessage());
        }
    }
	
}