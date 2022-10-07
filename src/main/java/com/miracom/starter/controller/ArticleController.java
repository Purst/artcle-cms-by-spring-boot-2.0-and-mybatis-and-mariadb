package com.miracom.starter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value = "/article/list", method= {RequestMethod.GET, RequestMethod.POST})	
	public String showList(Model model) { 
		
		List<ArticleDto> list = articleService.getList();
		
		log.info("list : " + list);	
		
		model.addAttribute("list", list);
		
		return "article/list"; 
	}
		
	@RequestMapping(value = "/article/add", method= {RequestMethod.GET, RequestMethod.POST})	
	public String showAdd() {		
		return "article/add"; 
	}
	
	@RequestMapping(value = "/article/detail", method= {RequestMethod.GET, RequestMethod.POST})	
	public String showDetail(Model model, ArticleDto dto) {	
		
		log.info("id : " + dto.getId());
		
		ArticleDto resultDto = articleService.get(dto);
		model.addAttribute("dto", resultDto);
		
		return "article/detail"; 
	}	
	
	@RequestMapping(value = "/article/doAdd", method= {RequestMethod.GET, RequestMethod.POST})		
	public String doAdd(ArticleDto dto) {		
		
		log.info("title : " + dto.getTitle());
		log.info("contents : " + dto.getContents());
		
		articleService.add(dto);
		
		return "redirect:/article/list";			  
	}
	
	@RequestMapping(value = "/article/remove", method= {RequestMethod.GET, RequestMethod.POST})		
	public String remove(ArticleDto dto) {		
		
		log.info("id : " + dto.getId());
		log.info("title : " + dto.getTitle());		
		
		articleService.delete(dto);
		
		return "redirect:/article/list";			  
	}
}
