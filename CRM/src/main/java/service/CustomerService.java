package service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.SessionFactory;

import org.hibernate.Transaction;

import java.util.List;


import org.hibernate.Session;

import entity.Customers;

@Service
public class CustomerService {
	@SuppressWarnings("unused")

	private SessionFactory factory;
	private Session session;
	
	public CustomerService(SessionFactory factory) {
		System.out.println("customer service");
		this.factory = factory;
		try {
			this.session = factory.getCurrentSession();
		} 
		catch (Exception e) {
			this.session = factory.openSession();
		}
		System.out.println("Session is created");
	}
	

	public void saveOrUpdate(Customers customer) {
		Transaction tx = session.beginTransaction();
		
		session.saveOrUpdate(customer);
		
		tx.commit();
	}
	
	@Transactional
	public Customers findRecord(int id) {
		Transaction tx = session.beginTransaction();
		
		Customers customer = session.get(Customers.class,id);
		
		tx.commit();
		return customer;
	}
	
	@Transactional
	public boolean deleteRecord(int id) {
		try {
			Transaction tx = session.beginTransaction();
			
			Customers record = session.get(Customers.class, id);
			session.delete(record);
			
			tx.commit();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	
	
	@Transactional
	public List<Customers> printRecords(){
		Transaction tx = session.beginTransaction();
		
		System.out.println("print records method in customer service ");
		List<Customers> records = session.createQuery("from Customers").list();
		
		tx.commit();
		return records;
	}
}
