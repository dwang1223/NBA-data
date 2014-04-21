package com.cs542.nba.model;

public class Team {

	int id;
	String conference;
	String division;
	String market;
	String name;
	String alias;
	String venue_name;
	int capacity;
	String address;
	String city;
	String state;
	
	public Team(int id, String conference, String division, String market,
			String name, String alias, String venue_name, int capacity,
			String address, String city, String state) {
		super();
		this.id = id;
		this.conference = conference;
		this.division = division;
		this.market = market;
		this.name = name;
		this.alias = alias;
		this.venue_name = venue_name;
		this.capacity = capacity;
		this.address = address;
		this.city = city;
		this.state = state;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getConference() {
		return conference;
	}

	public void setConference(String conference) {
		this.conference = conference;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getMarket() {
		return market;
	}

	public void setMarket(String market) {
		this.market = market;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getVenue_name() {
		return venue_name;
	}

	public void setVenue_name(String venue_name) {
		this.venue_name = venue_name;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
}
