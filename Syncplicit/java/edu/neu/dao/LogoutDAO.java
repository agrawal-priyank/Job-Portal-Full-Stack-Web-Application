package edu.neu.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;

import edu.neu.exception.AdException;
import edu.neu.pojo.Credential;
import edu.neu.pojo.Person;

public class LogoutDAO extends DAO{
    
	public Credential employerLogout(Credential credential, HttpSession session, HttpServletRequest request) throws AdException{
    	try {
    		begin();
    		System.out.println("Inside LogoutDAO");
    		
    		request.getSession();
    		if(session != null){
    			session.invalidate();
    		}
    		    		
			commit();
			return null;
		} catch (HibernateException e) {
            rollback();
		}
		return credential;    	
    }
	
	public Person personLogout(Person person, Credential credential, HttpSession session, HttpServletRequest request) throws AdException{
    	try {
    		begin();
    		System.out.println("Inside LogoutDAO");
    		
    		request.getSession();
    		if(session != null){
    			session.invalidate();
    		}
    		    		
			commit();
			return null;
		} catch (HibernateException e) {
            rollback();
		}
		return null;    	
    }
	
	public Credential adminLogout(Credential credential, HttpSession session, HttpServletRequest request) throws AdException{
    	try {
    		begin();
    		System.out.println("Inside LogoutDAO");
    		
    		request.getSession();
    		if(session != null){
    			session.invalidate();
    		}
    		    		
			commit();
			return null;
		} catch (HibernateException e) {
            rollback();
		}
		return credential;    	
    }
}
