package com.miracom.starter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.miracom.starter.dao.ArticleDao;
import com.miracom.starter.dto.ArticleDto;
import com.miracom.starter.service.ArticleService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ArticleController {
	
	@Autowired
	ArticleDao articleDao;
	
	@Autowired
	ArticleService articleService;
	
	@RequestMapping("/article/list")
	@GetMapping("/article/list")	
	public String showList(Model model) { 
		
		List<ArticleDto> list = articleService.getList();
		
		log.info("list : " + list);	
		
		model.addAttribute("list", list);	
		
		return "article/list"; 
	}
		
	@GetMapping("/article/add")
	public String showAdd() {		
		return "article/add"; 
	}
	
	@PostMapping("/article/doAdd")	
	public String doAdd(ArticleDto dto) {		
		
		log.info("title : " + dto.getTitle());
		log.info("contents : " + dto.getContents());
		
		articleService.add(dto);
		
		return "redirect:/article/list";			  
	}
}
