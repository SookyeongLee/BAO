package spring.bao.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.ModelAndView;

@Service
public class Bid {
	
	public Bid() {}
	@Autowired
	private HttpServletRequest request;
	
	public ModelAndView entrance() {
		ModelAndView mav = new ModelAndView();
		switch(request.getRequestURI().substring(1)) {
		case "PriceDetail":
			this.priceDetailCtl();
			break;
		case "RegisterBid":
			this.registerBidCtl();
			break;
		case "Accept":
			this.acceptCtl();
			break;
		case "Reject":
			this.rejectCtl();
			break;
		}
		return mav;
	}
	
	private ModelAndView rejectCtl() {
		ModelAndView mav = new ModelAndView();
//		this.updateStatus();
//		this.insSendBox();
//		this.insHelperRecBox();
		return mav;
	}
	
	private ModelAndView acceptCtl() {
		ModelAndView mav = new ModelAndView();
//		this.insBidInfo();
//		this.updateStatus();
//		this.insSendBox();
//		this.insHelperRecBox();
		return mav;
	}
	
	private ModelAndView registerBidCtl() {
		ModelAndView mav = new ModelAndView();
//		this.insPriceDetail();
		return mav;
	}
	
	private ModelAndView priceDetailCtl() {
		ModelAndView mav = new ModelAndView();

//			if(this.isPrice()) {
//				this.getPriceDetail();
//			}else {
//			
//			}
		return mav;
	}
	
	
}
