package com.miracom.starter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommonController {
	
	
	
	@GetMapping("/common/link")	
	public String includeLink() {
		return "common/link";
	}	
	
	@GetMapping("/common/sidebar")	
	public String showSidebar() {
		return "common/sidebar";
	}
	
	@GetMapping("/common/topbar")	
	public String showTopbar() {
		return "common/topbar";
	}

	@GetMapping("/common/footer")	
	public String showFooter() {
		return "common/footer";
	}	
	
	@GetMapping("/common/script")	
	public String includeScript() {
		return "common/script";
	}		
}
