package spring.bao.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.RequestBean;
import spring.bao.mohel.DealIf;

@Service
public class Deal {

	public Deal() {}
	
	@Autowired
	private DealIf mapper;
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private Gson gson;

	public ModelAndView entrance(RequestBean request) {
		ModelAndView mav = new ModelAndView();
		
		switch(request.getaCode()) {
		
		case "MyDeal":
			mav = this.myDealCtl();
			break;
		case "Detail":
			mav = this.detailCtl();
			break;
		case "Waiting":
			mav = this.waitingCtl();
			break;
		case "Ing":
			mav = this.ingCtl();
			break;
		case "EndDate":
			mav = this.endCtl();
			break;
		case "Search":
			mav = this.searchCtl();
			break;
		case "Filter":
			mav = this.filterCtl();
			break;
		}
		return mav;
	}
	
	private ModelAndView filterCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getFilterList();
		mav.setViewName("main");
		return mav;
	}
	
	private ModelAndView searchCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getSearchList();
		mav.setViewName("join");
		return mav;
	}
	
	private ModelAndView endCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getEndList();
		return mav;
	}
	private ModelAndView ingCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getIngList();
		return mav;
	}

	private ModelAndView waitingCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getWaitingList();
		return mav;
	}



	private ModelAndView detailCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getDetail();
		
		return mav;
	}

	private ModelAndView myDealCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getMyDealList();
		mav.setViewName("join");
		return mav;
	
	}
	
}
