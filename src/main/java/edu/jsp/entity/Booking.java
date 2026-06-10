package edu.jsp.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Booking {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private long bookingId;
	private String place;
	private String date;
	private String time;
	private long members;
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private User user;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public long getMembers() {
		return members;
	}
	public void setMembers(long members) {
		this.members = members;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	

}
