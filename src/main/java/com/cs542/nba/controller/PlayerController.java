package com.cs542.nba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cs542.nba.model.ClusterVariable;
import com.cs542.nba.model.PlayerProfile;
import com.cs542.nba.model.PlayerStats;
import com.cs542.nba.persistence.SqlManager;

@Controller
@RequestMapping("player/{playerId}")
public class PlayerController {

	@RequestMapping(method = RequestMethod.GET)
	public String handleIndex() {
		return "player";
	}
	
	@ModelAttribute("playerStat")
	public PlayerStats getPlayerStat(@PathVariable("playerId") int playerId) {
		PlayerStats playerStat = SqlManager.getPlayerStats(playerId);
		
		//ClusterVariable playerStat = new ClusterVariable(ps);
		return playerStat;
	}
	
	@ModelAttribute("playerInfo")
	public PlayerProfile getPlayerProfile(@PathVariable("playerId") int playerId) {
		PlayerProfile playerInfo = SqlManager.getPlayerProfile(playerId);
		return playerInfo;
	}
}
