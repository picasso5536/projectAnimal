package com.animal.www.market.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.commons.service.AllService;
import com.animal.www.market.model.dao.MarketDAO;

@Service
public class MarketServiceImpl implements MarketService, AllService {
	@Autowired
	private MarketDAO marketDAO;

	public void setMarketDAO(MarketDAO marketDAO) {
		this.marketDAO = marketDAO;
	}
	
}
