package spring.bao.services;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.servlet.ModelAndView;

import spring.bao.mapper.dealIf;
import spring.bao.beans.RequestBean;


@Service
public class RequestDeal {

	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private dealIf dealIf;
	
	public RequestDeal() {}
	

	public ModelAndView entrance(RequestBean request) {
		ModelAndView mav = new ModelAndView();
		
		switch(request.getSCode()) {
		
		case "DealForm":
			this.dealFormCtl(request);
			break;
		case "ReqSend":
			this.reqSendCtl(request);
			break;
		case "ModifyForm":
			this.modifyFormCtl(request);
			break;
		case "Modify":
			this.modifyCtl(request);
			break; 
		case "Delete":
			this.deleteCtl(request);
			break;
		}
		return mav;
	}

	private ModelAndView deleteCtl(RequestBean request) {
		ModelAndView mav = new ModelAndView();
//		this.deleteReqDetail();
		System.out.println();
		return mav;
	}
	
	private ModelAndView modifyCtl(RequestBean request) {
		ModelAndView mav = new ModelAndView();
//		this.updateReqDetail();
		return mav;
	}
	
	private ModelAndView modifyFormCtl(RequestBean request) {
		ModelAndView mav = new ModelAndView();
		if(this.isBidder(request)) {
			
			mav.setViewName("Request");
		}else {
			this.getReqDetail(request);
}
		return mav;
	}
	
	private ModelAndView reqSendCtl(RequestBean request) {
		ModelAndView mav = new ModelAndView();
//		this.insReqSend();
		return mav;
	}
	
	private ModelAndView dealFormCtl(RequestBean request) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("Request");
		
		return mav;
	}	
	private boolean convetToBoolean(int data) {
		return data == 1 ? true : false;
	}
	private boolean isBidder(RequestBean request) {
		return this.convetToBoolean(dealIf.isBidder(request));
	}
	private RequestBean getReqDetail(RequestBean request) {
		return dealIf.getReqDetail(request);
	}
	private boolean insReqSend(RequestBean request) {
		return this.convetToBoolean(dealIf.insReqSend(request));
	}
	private boolean updateReqDetail(RequestBean request) {
		return this.convetToBoolean(dealIf.updateReqDetail(request));
	}
	private boolean deleteReqDetail(RequestBean request) {
		return this.convetToBoolean(dealIf.deleteReqDetail(request));
	}
}
