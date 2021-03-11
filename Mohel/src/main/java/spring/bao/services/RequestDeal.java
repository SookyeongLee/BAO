package spring.bao.services;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.mapper.dealIf;
import spring.bao.beans.BidBean;
import spring.bao.beans.RequestBean;


@Service
public class RequestDeal {
	

	
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private dealIf dealIf;
	@Autowired
	private Gson gson;
	public RequestDeal() {}
	@Autowired
	HttpServletResponse response;
	
	public ModelAndView entrance(RequestBean request, BidBean bid) throws IOException {
		ModelAndView mav = new ModelAndView();
		
		switch(request.getSCode()) {
		
		case "DealForm":
			mav = this.dealFormCtl(); //완료
			break;
		case "ReqSend":
			mav = this.reqSendCtl(request);
			break;
		case "ModifyForm":
			mav = this.modifyFormCtl(request, bid); //완료
			break;
		case "Modify":
			mav = this.modifyCtl(request); // 반 완료
			break; 
		case "Delete":
			mav = this.deleteCtl(request); //완료
			break;
		}
		return mav;
	}
	// 요청글삭제
	private ModelAndView deleteCtl(RequestBean request) throws IOException {
		ModelAndView mav = new ModelAndView();
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());
	
		System.out.println(request.getRqCode());
		System.out.println(request.getRqId());
		if(this.deleteReqDetail(request)) {
			System.out.println("삭제완료");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('삭제가 완료되었습니다.'); </script>");
			out.flush();
			mav.setViewName("Authentication/main");
			tran.commit(status);
		}else {
			System.out.println("삭제 실패");
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('삭제를 실패하였습니다.'); </script>");
			out.flush();
			mav.setViewName("Authentication/main");
		}
		
		return mav;
	}
	// 요청글 수정
	private ModelAndView modifyCtl(RequestBean request) throws IOException  {
		ModelAndView mav = new ModelAndView();
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());
		

		if(this.updateReqDetail(request)){
			System.out.println("수정 완료");
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('수정 완료하였습니다.'); </script>");
			out.flush();
			
			tran.commit(status);
			mav.setViewName("Deal/modify-after-view");
		}else {
			System.out.println("수정 실패");
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('수정을 실패하였습니다.'); </script>");
			out.flush();
			
			mav.setViewName("requestmodify");
			
		}
		return mav;
	}
	//수정 페이지 이동
	private ModelAndView modifyFormCtl(RequestBean request, BidBean bid) throws IOException {
		ModelAndView mav = new ModelAndView();
		
		bid.setBiHelper("JUN");
		bid.setBiCode("4000210305090248");
	
		if(this.isBidder(bid)) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();			
			out.println("<script>alert('입찰자가 존재하여 수정불가능합니다. 삭제 후 재등록 해주세요'); </script>");
			out.flush();
			mav.setViewName("Deal/modify-after-view");
		}else {
			String jsonData = gson.toJson(this.getReqDetail(request));
			System.out.println(jsonData);
			mav.addObject("rqd", jsonData);                                                                                                                     
			mav.setViewName("requestmodify");
			
		}
		return mav;
	}
	//거래 등록(전송)
	private ModelAndView reqSendCtl(RequestBean request) {
		ModelAndView mav = new ModelAndView();
		
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());
		
		request.setRqId("DOYOUNG");
		request.setRqStCode("B");

		if(request.getRqSubName().equals("학업")) {
			request.setRqSubCode("10001001");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("외국어")) {
			request.setRqSubCode("10001002");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("음악")) {
			request.setRqSubCode("10001003");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("미술")) {
			request.setRqSubCode("10001004");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("스포츠")) {
			request.setRqSubCode("10001005");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("자격증")) {
			request.setRqSubCode("10001006");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("인테리어")) {
			request.setRqSubCode("20002001");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("이사")) {
			request.setRqSubCode("20002002");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("청소업체")) {
			request.setRqSubCode("20002003");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("야외시공")) {
			request.setRqSubCode("20002004");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("수리")) {
			request.setRqSubCode("20002005");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("가구")) {
			request.setRqSubCode("20002006");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("번역")) {
			request.setRqSubCode("30003001");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("통역")) {
			request.setRqSubCode("30003002");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("마케팅")) {
			request.setRqSubCode("30003003");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("컨설팅")) {
			request.setRqSubCode("30003004");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("문서")) {
			request.setRqSubCode("30003005");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("인쇄")) {
			request.setRqSubCode("30003006");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("일러스트 디자인")) {
			request.setRqSubCode("40004001");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("인쇄물 디자인")) {
			request.setRqSubCode("40004002");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("웹/모바일 디자인")) {
			request.setRqSubCode("40004003");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("제품디자인")) {
			request.setRqSubCode("40004004");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("공간디자인")) {
			request.setRqSubCode("40004005");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("브랜딩")) {
			request.setRqSubCode("40004006");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("게임")) {
			request.setRqSubCode("50005001");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("데이터베이스")) {
			request.setRqSubCode("50005002");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("웹사이트개발")) {
			request.setRqSubCode("50005003");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("모바일웹")) {
			request.setRqSubCode("50005004");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("AI개발")) {
			request.setRqSubCode("50005005");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("보안")) {
			request.setRqSubCode("50005006");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("영양/식단관리")) {
			request.setRqSubCode("60006001");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("심리상담")) {
			request.setRqSubCode("60006002");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("심리치료")) {
			request.setRqSubCode("60006003");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("헤어")) {
			request.setRqSubCode("60006004");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("메이크업")) {
			request.setRqSubCode("60006005");
			System.out.println(request.getRqSubCode());
		}if(request.getRqSubName().equals("피부관리")) {
			request.setRqSubCode("60006006");
			System.out.println(request.getRqSubCode());
		}
		if(this.insReqSend(request)) {
			System.out.println("Insert Complete");
			tran.commit(status);
			mav.setViewName("Authentication/main");
		}else {
			System.out.println("Insert False");
			mav.setViewName("Profile/Profile");
		}
		return mav;
	}
	//거래 등록 페이지 이동
	private ModelAndView dealFormCtl() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("request");
		
		return mav;
	}	
	private boolean convetToBoolean(int data) {
		return data == 1 ? true : false;
	}
	private boolean isBidder(BidBean bid) {
		return this.convetToBoolean(dealIf.isBidder(bid));
	}
	private ArrayList<RequestBean> getReqDetail(RequestBean request) {
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
