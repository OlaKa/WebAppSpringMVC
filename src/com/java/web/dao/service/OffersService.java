package com.java.web.dao.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.java.web.dao.Offer;
import com.java.web.dao.OffersDAO;

@Service("offersService")
public class OffersService {

	private OffersDAO offersDao;

	@Autowired
	public void setOffersDao(OffersDAO offersDao) {
		this.offersDao = offersDao;
	}

	public List<Offer> getCurrent() {
		return offersDao.getOffers();
	}

	public void create(Offer offer) {
		offersDao.create(offer);
		
	}
}
