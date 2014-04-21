package com.cs542.nba.model;

import java.util.ArrayList;

public class Combos {

	ArrayList<Combo> combo;
	ArrayList<Combo2> combo2;
	ArrayList<Combo3> Combo3;
	ArrayList<Combo4> Combo4;
	ArrayList<Combo5> Combo5;
	
	public Combos(ArrayList<Combo> combo6, ArrayList<Combo2> combo22,
			ArrayList<com.cs542.nba.model.Combo3> combo32,
			ArrayList<com.cs542.nba.model.Combo4> combo42, ArrayList<com.cs542.nba.model.Combo5> combo52) {
		super();
		this.combo = combo6;
		this.combo2 = combo22;
		Combo3 = combo32;
		Combo4 = combo42;
		Combo5 = combo52;
	}

	public ArrayList<Combo> getCombo() {
		return combo;
	}

	public void setCombo(ArrayList<Combo> combo) {
		this.combo = combo;
	}

	public ArrayList<Combo2> getCombo2() {
		return combo2;
	}

	public void setCombo2(ArrayList<Combo2> combo2) {
		this.combo2 = combo2;
	}

	public ArrayList<Combo3> getCombo3() {
		return Combo3;
	}

	public void setCombo3(ArrayList<Combo3> combo3) {
		Combo3 = combo3;
	}

	public ArrayList<Combo4> getCombo4() {
		return Combo4;
	}

	public void setCombo4(ArrayList<Combo4> combo4) {
		Combo4 = combo4;
	}

	public ArrayList<Combo5> getCombo5() {
		return Combo5;
	}

	public void setCombo5(ArrayList<Combo5> combo5) {
		Combo5 = combo5;
	}
	
	
}
