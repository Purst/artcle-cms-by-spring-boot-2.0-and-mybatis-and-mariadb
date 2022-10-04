package com.miracom.starter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommonController {	
	
	@RequestMapping(value = "/common/link", method= {RequestMethod.GET, RequestMethod.POST})	
	public String includeLink() {
		return "common/link";
	}	
	
	@RequestMapping(value = "/common/sidebar", method= {RequestMethod.GET, RequestMethod.POST})	
	public String showSidebar() {
		return "common/sidebar";
	}
	
	@RequestMapping(value = "/common/topbar", method= {RequestMethod.GET, RequestMethod.POST})	
	public String showTopbar() {
		return "common/topbar";
	}

	@RequestMapping(value = "/common/footer", method= {RequestMethod.GET, RequestMethod.POST})	
	public String showFooter() {
		return "common/footer";
	}	
	
	@RequestMapping(value = "/common/script", method= {RequestMethod.GET, RequestMethod.POST})	
	public String includeScript() {
		return "common/script";
	}		
}
