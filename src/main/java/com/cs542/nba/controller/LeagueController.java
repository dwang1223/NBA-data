package com.cs542.nba.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cs542.nba.model.PlayerProfile;
import com.cs542.nba.model.Team;
import com.cs542.nba.persistence.SqlManager;

@Controller
@RequestMapping("league")
public class LeagueController {

	@RequestMapping(method = RequestMethod.GET)
	public String handleIndex() {
		return "league";
	}
	
	
	@ModelAttribute("league")
	public ArrayList<Team> getLeague() {
		ArrayList<Team> league = SqlManager.getLeague();
		return league;
	}
	
	@ModelAttribute("SWD")
	public ArrayList<Team> getSouthWestDivision() {
		ArrayList<Team> swd = SqlManager.getDivision("SouthWest");
		return swd;
	}
	
	@ModelAttribute("NWD")
	public ArrayList<Team> getNorthWestDivision() {
		ArrayList<Team> nwd = SqlManager.getDivision("NorthWest");
		return nwd;
	}
	
	@ModelAttribute("PD")
	public ArrayList<Team> getPacificDivision() {
		ArrayList<Team> pd = SqlManager.getDivision("Pacific");
		return pd;
	}
	
	@ModelAttribute("SED")
	public ArrayList<Team> getSouthEastDivision() {
		ArrayList<Team> sed = SqlManager.getDivision("SouthEast");
		return sed;
	}
	
	@ModelAttribute("CD")
	public ArrayList<Team> getCentralDivision() {
		ArrayList<Team> cd = SqlManager.getDivision("Central");
		return cd;
	}
	
	@ModelAttribute("AD")
	public ArrayList<Team> getAltanticDivision() {
		ArrayList<Team> ad = SqlManager.getDivision("Atlantic");
		return ad;
	}
	
}
