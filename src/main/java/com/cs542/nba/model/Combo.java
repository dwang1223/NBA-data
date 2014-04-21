package com.cs542.nba.model;

public class Combo {

	int group;
	float winRatio;
	public Combo(int group, float winRatio) {
		super();
		this.group = group;
		this.winRatio = winRatio;
	}
	public int getGroup() {
		return group;
	}
	public void setGroup(int group) {
		this.group = group;
	}
	public float getWinRatio() {
		return winRatio;
	}
	public void setWinRatio(float winRatio) {
		this.winRatio = winRatio;
	}
	
	
}
