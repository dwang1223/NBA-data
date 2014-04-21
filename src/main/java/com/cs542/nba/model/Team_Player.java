package com.cs542.nba.model;

public class Team_Player {

	int id;
	int team_id;
	int player_id;
	public Team_Player(int id, int team_id, int player_id) {
		super();
		this.id = id;
		this.team_id = team_id;
		this.player_id = player_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public int getPlayer_id() {
		return player_id;
	}
	public void setPlayer_id(int player_id) {
		this.player_id = player_id;
	}
	
}
