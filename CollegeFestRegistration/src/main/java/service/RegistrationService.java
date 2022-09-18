package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.hibernate.SessionFactory;

import org.hibernate.Transaction;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;

import entity.Students;

@Service
public class RegistrationService {
	@SuppressWarnings("unused")
	@Autowired
	private SessionFactory factory;
	private Session session;
	public RegistrationService(SessionFactory factory) {
		System.out.println("register service");
		this.factory = factory;
		try {
			this.session = factory.getCurrentSession();
		} 
		catch (Exception e) {
			this.session = factory.openSession();
		}
		System.out.println("Session is created");
	}
	
	@Transactional
	public void saveOrUpdate(Students student) {
		Transaction tx = session.beginTransaction();
		
		session.saveOrUpdate(student);
		
		tx.commit();
	}
	
	@Transactional
	public Students findRecord(int student_id) {
		Transaction tx = session.beginTransaction();
		
		Students student = session.get(Students.class,student_id);
		
		tx.commit();
		return student;
	}
	
	@Transactional
	public boolean deleteRecord(int student_id) {
		try {
			Transaction tx = session.beginTransaction();
			
			Students student = session.get(Students.class, student_id);
			session.delete(student);
			
			tx.commit();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Students> printRecords(){
		Transaction tx = session.beginTransaction();
		
		List<Students> records = session.createQuery("from Registrations").list();
		
		tx.commit();
		return records;
	}
}
