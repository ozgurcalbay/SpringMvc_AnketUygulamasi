package com.ozgur;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	
	@RequestMapping("/")
	public String redictToDepartments() {
		return "redirect:anket/showform";
	}

}
