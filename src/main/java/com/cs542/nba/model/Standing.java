package com.cs542.nba.model;

public class Standing {

	int id;
	float win_pct;
	public Standing(int id, float win_pct) {
		super();
		this.id = id;
		this.win_pct = win_pct;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getWin_pct() {
		return win_pct;
	}
	public void setWin_pct(float win_pct) {
		this.win_pct = win_pct;
	}
	
}
