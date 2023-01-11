package com.prowings.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prowings.model.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void createEmployee(Employee employee) {
		Session ses = sessionFactory.openSession();
		Transaction tx = ses.beginTransaction();
		ses.save(employee);
		tx.commit();
		ses.close();

	}

	@Override
	public void deleteEmployee(int id) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Employee e = session.get(Employee.class, id);
		System.out.println(e);
		session.delete(e);
		tr.commit();
		session.close();
	}

	@Override
	public void updateEmployee(Employee employee) {
		Session ses1=sessionFactory.openSession();
		Transaction tx=ses1.beginTransaction();
		ses1.saveOrUpdate(employee);
		tx.commit();
		ses1.close();
	}

	@Override
	public Employee readEmployee(int id) {
		Session ses2=sessionFactory.openSession();
		Transaction tx=ses2.beginTransaction();
		Employee e2=ses2.get(Employee.class,id);
		System.out.println(e2);
		tx.commit();
		ses2.close();
		return e2;
	}


}
