package com.miracom.starter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ArticleController {

	@RequestMapping(value = "/article/list", method = RequestMethod.GET)	
	public String showList() { 
		return "article/list";
	}
}
