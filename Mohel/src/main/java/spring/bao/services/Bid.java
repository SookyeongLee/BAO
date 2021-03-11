package spring.bao.services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.BidBean;
import spring.bao.beans.MemberBean;
import spring.bao.beans.RequestBean;
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
	
	
	public ModelAndView entrance(BidBean bidbean ) {
		
		ModelAndView mav = new ModelAndView();
		
		
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
	
	private ModelAndView rejectCtl(BidBean bidbean) {  // 거절 누릅니다
		ModelAndView mav = new ModelAndView();
//		this.updateStatus();
//		this.insSendBox();
//		this.insHelperRecBox();
		return mav;
	}
	
	private ModelAndView acceptCtl(BidBean bidbean) { // 수락 누릅니다
		ModelAndView mav = new ModelAndView();
//		this.insBidInfo();
//		this.updateStatus();
//		this.insSendBox();
//		this.insHelperRecBox();
		return mav;
	}
	
	private ModelAndView registerBidCtl(BidBean bidbean) { //레지스터 입찰
		ModelAndView mav = new ModelAndView();

		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());
	
		this.insBi(bidbean);
		tran.commit(status);
		
		mav.setViewName("Profile/profile");
		return mav;
	}
	
	private ModelAndView priceDetailCtl(BidBean bidbean) { // 가격 상세 
	
		System.out.println("priceDetailCtl 진입");
		
		bidbean.setRqCode("2000210309040334");
		bidbean.setBiMmHelper("JUN");
		System.out.println(bidbean.getRqCode());
		System.out.println(bidbean.getBiMmHelper());
		
		
		ModelAndView mav = new ModelAndView();
		String json = gson.toJson(this.getReq(bidbean));
		System.out.println("매퍼진입 성공 후 리턴");
		mav.addObject("getReq",json);
		
		mav.setViewName("Deal/beforeDeal-helper");
		return mav;
	}

	
	
	private boolean ConvertToBoolean(int data) {
		return data==1?true :false;
	}

	private ArrayList<BidBean> getReqDetail(BidBean bidbean) {
		return mapper.getReqDetail(bidbean);
	}
	private ArrayList<BidBean> getReq(BidBean bidbean) {
		System.out.println("매퍼진입합니다");
		return mapper.getReq(bidbean);
	}
	private boolean insBi(BidBean bidbean) {
		return ConvertToBoolean(mapper.insBi(bidbean));
		
	}
	
}
