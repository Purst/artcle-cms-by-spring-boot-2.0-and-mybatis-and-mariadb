package com.miracom.starter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	@GetMapping("/home/main")
	@ResponseBody
	public String showMain() {
		return "메인화면 입니다.";
	}
}
