package com.miracom.starter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.miracom.starter.dto.Article;
import com.miracom.starter.service.ArticleService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ArticleController {
	
	@Autowired
	ArticleService articleService;
	
	@RequestMapping(value = "/article/list", method = RequestMethod.GET)	
	public String showList(Model model) { 
		
		List<Article> list = articleService.getList();
		
		log.info("list : " + list);	
		
		model.addAttribute("list", list);	
		
		return "article/list"; 
	}
}
