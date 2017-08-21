package com.java.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.java.web.dao.Offer;
import com.java.web.dao.service.OffersService;

@Controller
public class OffersController {

	private OffersService offersService;

	/*
	 * @RequestMapping("/") public ModelAndView showHome() { ModelAndView mv =
	 * new ModelAndView("home");
	 * 
	 * Map<String, Object> model = mv.getModel();
	 * 
	 * model.put("name", "River");
	 * 
	 * return mv; }
	 */

	@Autowired
	public void setOffersService(OffersService offersService) {
		this.offersService = offersService;
	}

	@RequestMapping("/offers")
	public String showOffers(Model model) {

		List<Offer> offers = offersService.getCurrent();
		model.addAttribute("offers", offers);
		return "offers";
	}
	
	@RequestMapping("/createoffer")
	public String showHome() {

		return "createoffer";
	}
	
	@RequestMapping(value="/docreate", method=RequestMethod.POST)
	public String doCreate(Model model, Offer offer) {
		System.out.println(offer);
		return "offercreated";
	}
}
