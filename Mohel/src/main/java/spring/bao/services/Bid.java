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
	
	
	public ModelAndView entrance(BidBean bidbean , MemberBean memberbean) {
		
		ModelAndView mav = new ModelAndView();
		
		
		switch(bidbean.getBidScode()) {
		
		case "PriceDetail":
			mav = this.priceDetailCtl(bidbean, memberbean);
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
		System.out.println("레지스터 bid ctl 진입");
		System.out.println(bidbean.getBiRqCode());
		if(this.insBi(bidbean)) {
			System.out.println("insBi 매퍼출동");
			mav.addObject("insBi","인서트");
			System.out.println("insBi매퍼 성공");
			mav.setViewName("Deal/bidAfter");
			
		}
	

		return mav;
		
	}
	
	
	private ModelAndView priceDetailCtl(BidBean bidbean ,MemberBean memberbean) { // 가격 상세 
	
		System.out.println("priceDetailCtl 진입");
		
		bidbean.setRqCode("1000210305090308");	
		memberbean.setAlMmid("JUN");
		bidbean.setBiMmHelperView("JUN");
		
		
		
		
		System.out.println(bidbean.getRqCode());
		System.out.println(bidbean.getBiMmHelperView());
		System.out.println(bidbean.getAlMmid());
		ModelAndView mav = new ModelAndView();
		String json = gson.toJson(this.getReq(bidbean));
		System.out.println("getReq 매퍼진입 갔다왔습니다");
		mav.addObject("getReq",json);
		
		String json2 = gson.toJson(this.getReq2(memberbean));
		mav.addObject("getReq2",json2);
		System.out.println(json2);
		
		
		String bidjson = gson.toJson(this.bidList(bidbean));
		mav.addObject("bidList",bidjson);
		System.out.println(bidjson);
		System.out.println("bidList 매퍼 다녀옴");
		
		mav.setViewName("Deal/beforeDeal-helper");
		return mav;
	}

	
	
	private boolean ConvertToBoolean(int data) {
		return data==1?true :false;
	}

	private ArrayList<BidBean> bidList(BidBean bidbean) {
		System.out.println("bidList 매퍼 진입합니다.");
		return mapper.bidList(bidbean);
	}
	private ArrayList<BidBean> getReq(BidBean bidbean) {
		System.out.println("getReq매퍼진입합니다");
		return mapper.getReq(bidbean);
	}
	private boolean insBi(BidBean bidbean) {
		System.out.println("insBi매퍼 진입합니다");
		return ConvertToBoolean(mapper.insBi(bidbean));
		
	}
	
	private boolean isBiCheck(BidBean bidbean) {
		return ConvertToBoolean(mapper.isBiCheck(bidbean));
	}
	
	private ArrayList<MemberBean> getReq2(MemberBean memberbean){
		return mapper.getReq2(memberbean);
	}
	
}
