package spring.bao.services;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.servlet.ModelAndView;

import spring.bao.beans.RequestBean;


@Service
public class RequestDeal {

	@Autowired
	private PlatformTransactionManager tran;
	
	public RequestDeal() {}
	

	public ModelAndView entrance(RequestBean request) {
		ModelAndView mav = new ModelAndView();
		
		switch(request.getSCode()) {
		
		case "DealForm":
			this.dealFormCtl();
			break;
		case "ReqSend":
			this.reqSendCtl();
			break;
		case "ModifyForm":
			this.modifyFormCtl();
			break;
		case "Modify":
			this.modifyCtl();
			break; 
		case "Delete":
			this.deleteCtl();
			break;
		}
		return mav;
	}

	private ModelAndView deleteCtl() {
		ModelAndView mav = new ModelAndView();
//		this.deleteReqDetail();
		System.out.println();
		return mav;
	}
	
	private ModelAndView modifyCtl() {
		ModelAndView mav = new ModelAndView();
//		this.updateReqDetail();
		return mav;
	}
	
	private ModelAndView modifyFormCtl() {
		ModelAndView mav = new ModelAndView();
//		if(this.isBidder()) {
//			
//		}else {
//			this.getReqDetail();
//		}
		return mav;
	}
	
	private ModelAndView reqSendCtl() {
		ModelAndView mav = new ModelAndView();
//		this.insReqSend();
		return mav;
	}
	
	private ModelAndView dealFormCtl() {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("Request");
		
		return mav;
	}	
}
