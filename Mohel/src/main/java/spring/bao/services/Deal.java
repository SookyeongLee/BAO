package spring.bao.services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.BidBean;
import spring.bao.beans.RequestBean;
import spring.bao.mapper.dealIf;

@Service
public class Deal {
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private dealIf dealIf;
	@Autowired
	private Gson gson;
	public Deal() {
		
	}
	
	

	public ModelAndView entrance(RequestBean request, BidBean bid) {
		ModelAndView mav = new ModelAndView();
		
		switch(request.getSCode()) {
		
		case "MyDeal":
			mav = this.myDealCtl(request, bid);
			break;
		case "Detail":
			mav = this.detailCtl();
			break;
		case "Waiting":
			this.waitingCtl();
			break;
		case "Ing":
			this.ingCtl();
			break;
		case "EndDate":
			this.endCtl();
			break;
		case "Search":
			this.searchCtl();
			break;
		case "Filter":
			this.filterCtl();
			break;
		}
		return mav;
	}
	
	private ModelAndView filterCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getFilterList();
		return mav;
	}
	
	private ModelAndView searchCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getSearchList();
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
		
		
		mav.setViewName("Deal/beforeDeal-wisher");
		
		return mav;
	}

	private ModelAndView myDealCtl(RequestBean request, BidBean bid) {
		ModelAndView mav = new ModelAndView();
		System.out.println("들어왔다");
		
		request.setRqCode("4000210305090348");
		request.setRqId("DOYOUNG");
		
	
			String jsonData = gson.toJson(this.getReqDetail(request));
			System.out.println(jsonData);
			mav.addObject("rqd", jsonData);                                                                                                                     
			mav.setViewName("Deal/beforeDeal-wisher");
			
		
		return mav;
	}
	private boolean deleteReqDetail(RequestBean request) {
		return this.convetToBoolean(dealIf.deleteReqDetail(request));
	}
	private boolean isBidder(BidBean bid) {
		return this.convetToBoolean(dealIf.isBidder(bid));
	}
	private boolean convetToBoolean(int data) {
		return data == 1 ? true : false;
	}
	private ArrayList<RequestBean> getReqDetail(RequestBean request) {
		System.out.println("Hi Detail");
		return dealIf.getReqDetail(request);
	}
}
