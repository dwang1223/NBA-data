package com.cs542.nba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("combo")
public class ComboController {

	@RequestMapping(method = RequestMethod.GET)
	public String handleIndex() {
		return "combo";
	}

}