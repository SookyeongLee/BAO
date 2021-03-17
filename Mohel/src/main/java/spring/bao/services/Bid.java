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
import spring.bao.beans.MessageBean;
import spring.bao.beans.RequestBean;
import spring.bao.beans.wiPriceBean;
import spring.bao.mapper.BidIf;

@Service
public class Bid {

	public Bid() {
	}

	@Autowired
	private HttpServletRequest request;
	@Autowired
	private Gson gson;
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private BidIf mapper;

	public ModelAndView entrance(BidBean bidbean, MemberBean memberbean, MessageBean message) {

		ModelAndView mav = new ModelAndView();

		switch (bidbean.getBidScode()) {

		case "PriceDetail":
			mav = this.priceDetailCtl(bidbean, memberbean);
			break;
		case "RegisterBid":
			mav = this.registerBidCtl(bidbean);
			break;
		case "Accept":
			mav = this.acceptCtl(bidbean, message);
			break;
		case "goWisher":
			mav = this.goWisher(bidbean, memberbean);
			break;
		case "Reject":
			mav = this.rejectCtl(bidbean, message);
			break;

		}
		return mav;
	}

	private ModelAndView rejectCtl(BidBean bidbean, MessageBean message) {
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());

		ModelAndView mav = new ModelAndView();
		
		ArrayList<BidBean> everyReject = new ArrayList<BidBean>();
		everyReject = this.rejectMInfoStM(bidbean);
		
		try {
			for (int i = 0; i < everyReject.size(); i++) {
				if (this.updateEveryRejectStatus(bidbean)) {
				}
			}
			
			ArrayList<BidBean> rejectMsg = new ArrayList<BidBean>();
			rejectMsg = this.rejectEveryMInfoMsg(bidbean);
			
			for (int i = 0; i < rejectMsg.size(); i++) {
				message.setBiMmHelper(rejectMsg.get(i).getBiMmHelperView());
				if (this.insRejectMsg(message)) {
					
					
				}
			}
			tran.commit(status);

		} catch (Exception e) {
			tran.rollback(status);
			e.printStackTrace();
		}
		mav.setViewName("Deal/beforeDeal-helper");
		return mav;
	}

	
	private ModelAndView acceptCtl(BidBean bidbean, MessageBean message) { // 수락 누릅니다
		ModelAndView mav = new ModelAndView();
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());

//		System.out.println(bidbean.getWiRqCode());
		System.out.println(bidbean.getRqCode());
		System.out.println(message.getWiHelper());
		System.out.println(message.getRqId());
		System.out.println(bidbean.getWiPrice());

		try {
			if (this.insBidInfo(bidbean)) {
				System.out.println("낙찰 인서트 ");// 낙찰테이블 인서트
				if (this.updateAcceptStatus(bidbean)) { // 상태값 업데이트
					System.out.println("낙찰 업데이트 ");
					// 유찰 포문
					ArrayList<BidBean> reject = new ArrayList<BidBean>();
					reject = this.rejectMInfo(bidbean);

					for (int i = 0; i < reject.size(); i++) {
						if (this.updateRejectStatus(bidbean)) {
							System.out.println("유찰 업데이트 ");
						}
					}
					if (this.insAcceptMsg(message)) {// 메세지
						System.out.println("낙찰 메세지 인서트 ");
						// 유찰메세지 포문
						ArrayList<BidBean> rejectMsg = new ArrayList<BidBean>();
						rejectMsg = this.rejectMInfoMsg(bidbean);
						for (int i = 0; i < rejectMsg.size(); i++) {
							message.setBiMmHelper(rejectMsg.get(i).getBiMmHelperView());
							if (this.insRejectMsg(message)) {
								System.out.println("유찰 메세지 인서트 ");
								tran.commit(status);
								System.out.println("here");
							}
						}

					}

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			tran.rollback(status);
			System.out.println("롤백 ");
		}

		mav.setViewName("Deal/ing-wisher");
		return mav;
	}

	private ModelAndView goWisher(BidBean bidbean, MemberBean memberbean) {
		ModelAndView mav = new ModelAndView();
		bidbean.setRqId("DOYOUNG");
		memberbean.setAlMmid("PPP");
		bidbean.setRqCode("2000210312100345");

		String reqMmid = gson.toJson(this.reqMmid(bidbean));
		mav.addObject("reqMmid", reqMmid);

		String reqjson = gson.toJson(this.getReq(bidbean));
		mav.addObject("getReq", reqjson);

		String json2 = gson.toJson(this.getReq2(memberbean));
		mav.addObject("getReq2", json2);

		String bidjson = gson.toJson(this.bidList(bidbean));
		mav.addObject("bidList", bidjson);

		//
		mav.setViewName("Deal/beforeDeal-wisher");
		return mav;
	}

	private ModelAndView registerBidCtl(BidBean bidbean) { // 레지스터 입찰
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());
		ModelAndView mav = new ModelAndView();

		System.out.println(bidbean.getBiRqCode());
		if (this.insBi(bidbean)) {
			mav.addObject("insBi", "인서트");
			tran.commit(status);
			mav.setViewName("Deal/bidAfter");

		} else {
			tran.rollback(status);
		}

		return mav;

	}

	private ModelAndView priceDetailCtl(BidBean bidbean, MemberBean memberbean) { // 가격 상세

		bidbean.setRqCode("2000210312100345");
		memberbean.setAlMmid("PPP");

		ModelAndView mav = new ModelAndView();

		String json = gson.toJson(this.getReq(bidbean));
		mav.addObject("getReq", json);
		String json2 = gson.toJson(this.getReq2(memberbean));
		System.out.println(json2);
		mav.addObject("getReq2", json2);

		String bidjson = gson.toJson(this.bidList(bidbean));
		mav.addObject("bidList", bidjson);

		mav.setViewName("Deal/beforeDeal-helper");
		return mav;
	}

	private boolean ConvertToBoolean(int data) {
		return data == 1 ? true : false;
	}

	private ArrayList<BidBean> bidList(BidBean bidbean) {
		return mapper.bidList(bidbean);
	}

	private ArrayList<BidBean> getReq(BidBean bidbean) {
		return mapper.getReq(bidbean);
	}

	private ArrayList<BidBean> rejectMInfo(BidBean bidbean) {
		return mapper.rejectMInfo(bidbean);
	}

	private ArrayList<BidBean> rejectMInfoStM(BidBean bidbean) {

		return mapper.rejectMInfoStM(bidbean);
	}

	private ArrayList<BidBean> rejectMInfoMsg(BidBean bidbean) {
		return mapper.rejectMInfoMsg(bidbean);
	}

	private ArrayList<BidBean> rejectEveryMInfoMsg(BidBean bidbean) {
		return mapper.rejectEveryMInfoMsg(bidbean);
	}

	private boolean insBi(BidBean bidbean) {
		return ConvertToBoolean(mapper.insBi(bidbean));

	}

	private ArrayList<MemberBean> getReq2(MemberBean memberbean) {
		return mapper.getReq2(memberbean);
	}

	private boolean insBidInfo(BidBean bidbean) {
		return ConvertToBoolean(mapper.insBidInfo(bidbean));

	}

	private boolean updateAcceptStatus(BidBean bidbean) {
		return ConvertToBoolean(mapper.updateAcceptStatus(bidbean));

	}

	private boolean updateRejectStatus(BidBean bidbean) {
		return ConvertToBoolean(mapper.updateRejectStatus(bidbean));
	}

	private boolean updateEveryRejectStatus(BidBean bidbean) {
		return ConvertToBoolean(mapper.updateEveryRejectStatus(bidbean));

	}

	private boolean insAcceptMsg(MessageBean message) {
		return ConvertToBoolean(mapper.insAcceptMsg(message));
	}

	private boolean insRejectMsg(MessageBean message) {
		return ConvertToBoolean(mapper.insRejectMsg(message));
	}

	private ArrayList<BidBean> reqMmid(BidBean bidbean) {
		return mapper.reqMmid(bidbean);

	}

}
