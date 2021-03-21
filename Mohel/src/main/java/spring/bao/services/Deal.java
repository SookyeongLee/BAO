package spring.bao.services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.BidBean;
import spring.bao.beans.ReviewBean;
import spring.bao.mapper.ReviewIF;

@Service
public class Deal {
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private Gson gson;
	@Autowired
	private ReviewIF mapper;
	@Autowired
	private PlatformTransactionManager tran;
	public Deal() {}
	

	public ModelAndView entrance() {
		ModelAndView mav = new ModelAndView();
		
		switch(request.getRequestURI().substring(1)) {
		
		case "MyDeal":
			this.myDealCtl();
			break;
		case "Detail":
			this.detailCtl();
			break;
		case "Waiting":
			this.waitingCtl();
			break;
		case "Ing":
			this.ingCtl();
			break;
		case "End":
			mav = this.endCtl();
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
//		bid.setWiHelper("JUN");
//		bid.setWiRqCode("6000210305090301");
//		
//		System.out.println(bid.getWiRqCode());
//		
//		String jsonData = gson.toJson(this.getCH(bid));
//		System.out.println(jsonData);
//		 mav.addObject("info",jsonData);	
		mav.setViewName("Deal/endDate-wisher");
		//mav.setViewName("Review/writeReview");
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
		return mav;
	}
	private ArrayList<BidBean> getCH(BidBean bid) {
		return mapper.getCH(bid);
	}
}
