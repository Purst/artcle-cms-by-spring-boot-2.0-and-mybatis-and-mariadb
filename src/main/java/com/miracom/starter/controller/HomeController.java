package com.miracom.starter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	@RequestMapping(value = "/home/main", method = RequestMethod.GET)
	@ResponseBody
	public String showMain() {
		return "메인화면 입니다.";
	}
}
