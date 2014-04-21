package com.cs542.nba.model;

public class Combo3 {

	int cluster1;
	int cluster2;
	int cluster3;
	float winRatio;
	
	public Combo3(int cluster1, int cluster2, int cluster3, float winRatio) {
		super();
		this.cluster1 = cluster1;
		this.cluster2 = cluster2;
		this.cluster3 = cluster3;
		this.winRatio = winRatio;
	}
	public int getCluster1() {
		return cluster1;
	}
	public void setCluster1(int cluster1) {
		this.cluster1 = cluster1;
	}
	public int getCluster2() {
		return cluster2;
	}
	public void setCluster2(int cluster2) {
		this.cluster2 = cluster2;
	}
	public float getWinRatio() {
		return winRatio;
	}
	public void setWinRatio(float winRatio) {
		this.winRatio = winRatio;
	}
	public int getCluster3() {
		return cluster3;
	}
	public void setCluster3(int cluster3) {
		this.cluster3 = cluster3;
	}
	
}
