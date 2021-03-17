package spring.bao.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class RequestDeal {

	public RequestDeal() {}
	@Autowired
	private HttpServletRequest request;

	public ModelAndView entrance() {
		ModelAndView mav = new ModelAndView();
		
		switch(request.getRequestURI().substring(1)) {
		
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
//		this.isSession();
		return mav;
	}	
}
