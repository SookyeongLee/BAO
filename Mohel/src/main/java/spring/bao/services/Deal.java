package spring.bao.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class Deal {

	public Deal() {}
	@Autowired
	private HttpServletRequest request;

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
		mav.setViewName("Deal/endDate-wisher");
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
	
}
