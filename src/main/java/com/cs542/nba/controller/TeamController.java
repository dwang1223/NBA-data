package com.cs542.nba.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cs542.nba.model.PlayerProfile;
import com.cs542.nba.model.Team;
import com.cs542.nba.persistence.SqlManager;

@Controller
@RequestMapping("team/{teamId}")
public class TeamController {

	boolean checkRange(int teamId) {
		return (teamId > 0) && (teamId < 31);
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String handleIndex() {
		return "roster";
	}
	
	@ModelAttribute("team")
	public Team getTeamProfile(@PathVariable("teamId") int teamId) {
		if (!checkRange(teamId))
			return null;
		
		Team team = SqlManager.getTeamProfile(teamId);
		return team;
	}
	
	@ModelAttribute("roster")
	public ArrayList<PlayerProfile> getRoster(@PathVariable("teamId") int teamId) {
		if (!checkRange(teamId))
			return null;
		
		ArrayList<PlayerProfile> roster = SqlManager.getTeamRoster(teamId);
		return roster;
	}
}
