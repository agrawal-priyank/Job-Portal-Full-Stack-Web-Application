package edu.neu.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import edu.neu.exception.AdException;
import edu.neu.pojo.Credential;

public class LoginDAO extends DAO{
    
	public Credential login(String userName, String password) throws AdException{
    	try {
    		begin();
    		System.out.println("Inside LoginDAO");
    		
    		Query query = getSession().createQuery("from Credential where user_name = :userName and password = :password ");
			query.setParameter("userName", userName);
			query.setParameter("password", password);
			Credential credential = (Credential)query.uniqueResult();
		
			commit();
			return credential;
		} catch (HibernateException e) {
            rollback();
            throw new AdException("Could not get user" + userName, e);
		}
    	
    }
}
