package com.java.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.web.dao.Offer;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showHome(Model model) {

		return "home";
	}

}
