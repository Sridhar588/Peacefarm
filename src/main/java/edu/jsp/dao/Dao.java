package edu.jsp.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import edu.jsp.controller.MainController;
import edu.jsp.entity.Booking;
import edu.jsp.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
@Component
public class Dao {
	User user=null;
	
	private static	EntityManagerFactory emf=Persistence.createEntityManagerFactory("peacefarm");
	private static	EntityManager em=emf.createEntityManager();
	private static	EntityTransaction et=em.getTransaction();
		
	

	public void addUser(User u) {
		et.begin();
		em.persist(u);
		et.commit();
		
		
	}



	public User login(User u) {
		Query query= em.createQuery("select u from User u where u.username=?1 and u.password=?2");
		query.setParameter(1, u.getUsername());
		query.setParameter(2, u.getPassword());
		
		try {
			User rs=(User) query.getSingleResult();
			if(rs!=null)
				return rs;
			else
				return u;
		}
		catch(NoResultException e) {
			MainController.getLogin();
		}
		return null;
	}



	public boolean addBooking(String place,String date,String time,long members,User user) {
		Query query= em.createQuery("select b from Booking b where b.date=?1 and b.time=?2 and b.user=?3");
		query.setParameter(1, date);
		query.setParameter(2, time);
		query.setParameter(3,user);
		List<Booking> rs=(List<Booking>) query.getResultList();
		if(rs.isEmpty()) {
			Booking b=new Booking();
			b.setPlace(place);
			b.setDate(date);
			b.setTime(time);
			b.setMembers(members);
			b.setUser(user);
			et.begin();
			em.persist(b);
			et.commit();
			return true;
		}
		
		return false;
		
	}



	public List<Booking> getBookings(User user) {
		Query query= em.createQuery("select b from Booking b where b.user=?1");
		query.setParameter(1, user);
		List<Booking> rs=(List<Booking>)query.getResultList();
		
		return rs;
		
		
	}

}
