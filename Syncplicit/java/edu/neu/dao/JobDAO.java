package edu.neu.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import edu.neu.exception.AdException;
import edu.neu.pojo.Application;
import edu.neu.pojo.Employer;
import edu.neu.pojo.Job;
import edu.neu.pojo.Person;

public class JobDAO extends DAO {

	public Job create(Job job, Employer employer) throws AdException{
		try {
			begin();
			System.out.println("Inside JobDAO");
				
			Date date = new Date();
			job.setDate(date);
			job.setEmployer(employer);

			employer.getJobList().add(job);
			
			getSession().save(job);
			
			commit();
			return job;	
		} catch (HibernateException e) {
			rollback();
			// TODO: handle exception
			//throw new AdException("Could not get user" + userName, e);
			throw new AdException("Exception while creating user: " + e.getMessage());
		}
		finally {
			getSession().close();
		}
	}
	
	public void delete(Job job, Employer employer) throws AdException {
        try {
            begin();
            employer.getJobList().remove(job);
            getSession().delete(job);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete Job", e);
        }
    }
	
	public void update(Job job) throws AdException {
        try {
            begin();
            getSession().update(job);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not update Job", e);
        }
    }
	
	public void apply(Job job, Person person) throws AdException {
        try {
            begin();
            
            Application apply = new Application();
            apply.setJob(job);
            apply.setPerson(person);
            getSession().update(apply);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not apply Job", e);
        }
    }
	
	public Job getJob(Long jobId) throws AdException {
        Job job;
		try {
            begin();
            Query q = getSession().createQuery("FROM Job where jobId = :jobId");
            q.setParameter("jobId", jobId);
            job = (Job)q.uniqueResult();
            commit();
            return job;
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Could not delete Job", e);
        }
    }
	
	public Job retrieve(Job job, Employer employer){
		try {
			begin();
			System.out.println("Inside JobDAO");
			
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return job;
	}	
	
	public List<Job> search(){
		try {
			begin();
			
			System.out.println("Inside JobDAO");
			
			Query query = getSession().createQuery("from Job");
			List<Job> jobs = query.list();
			System.out.println(jobs);
			
			return jobs;
			
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		return null;
	}
}
