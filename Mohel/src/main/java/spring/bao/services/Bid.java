package spring.bao.services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.BidBean;
import spring.bao.mapper.BidIf;

@Service
public class Bid {
	
	public Bid() {}
	@Autowired	
	private HttpServletRequest request;
	@Autowired
	private Gson gson;
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private BidIf mapper;
	
	
	public ModelAndView entrance(BidBean bidbean) {
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println(bidbean.getBidScode());
		
		switch(bidbean.getBidScode()) {
		
		case "PriceDetail":
			mav = this.priceDetailCtl(bidbean);
			break;
		case "RegisterBid":
			mav = this.registerBidCtl(bidbean);
			break;
		case "Accept":
			mav = this.acceptCtl(bidbean);
			break;
		case "Reject":
			mav = this.rejectCtl(bidbean);
			break;
		}
		return mav;
	}
	
	private ModelAndView rejectCtl(BidBean bidbean) {
		ModelAndView mav = new ModelAndView();
//		this.updateStatus();
//		this.insSendBox();
//		this.insHelperRecBox();
		return mav;
	}
	
	private ModelAndView acceptCtl(BidBean bidbean) {
		ModelAndView mav = new ModelAndView();
//		this.insBidInfo();
//		this.updateStatus();
//		this.insSendBox();
//		this.insHelperRecBox();
		return mav;
	}
	
	private ModelAndView registerBidCtl(BidBean bidbean) {
		ModelAndView mav = new ModelAndView();
//		this.insPriceDetail();
		return mav;
	}
	
	private ModelAndView priceDetailCtl(BidBean bidbean) {
		System.out.println("priceDetailCtl 진입");
		ModelAndView mav = new ModelAndView();

			if(this.isPrice()) {
				this.getPriceDetail(bidbean);
			}else {
			
			}
			
			
		mav.setViewName("Deal/beforeDeal-helper");
		return mav;
	}

	private boolean ConvertToBoolean(int data) {
		return data==1?true :false;
	}
	
	
	private ArrayList<BidBean> getPriceDetail(BidBean bidbean) {
		
		return mapper.getPriceDetail(bidbean);
	}

	private boolean isPrice() {

		return false;
	}
	
	
}
