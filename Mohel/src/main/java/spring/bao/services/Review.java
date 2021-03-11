package spring.bao.services;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonElement;

import spring.bao.beans.ReviewBean;
import spring.bao.mapper.ReviewIf;

@Service
public class Review {
	
	public Review() {}
	
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private Gson gson;
	@Autowired
	private ReviewIf mapper;
	@Autowired
	private PlatformTransactionManager tran;
	
	
	
	public ModelAndView entrance(ReviewBean rev) {
		ModelAndView mav = new ModelAndView();
		switch(rev.getSCode()) {
		
		case "WriteReview":
			mav = this.writeReviewFormCtl();
			break;
		case "ViewReview":
			mav = this.reviewCtl(rev);
			break;
		case "ShowReview":
			mav = this.showReviewCtl(rev);
			break;
		
		}
			return mav;
	}

	// 리뷰 보기 
	private ModelAndView showReviewCtl(ReviewBean rev) {
		ModelAndView mav = new ModelAndView();
		rev.setRvHelper("JUN");
		rev.setRvWirqCode("6000210305090301");

//			System.out.println(this.getReview(rev));
			mav.addObject("info",this.getReview(rev));
			String jsonData = gson.toJson(this.getReview(rev));
			mav.addObject("info",jsonData);	
			mav.setViewName("Review/viewReview");
		
		return mav;
	}

	



	
//리뷰 쓰기
	private ModelAndView writeReviewFormCtl() {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("Review/writeReview");
		
		return mav;
		
	}


	private ModelAndView reviewCtl(ReviewBean rev) {
		ModelAndView mav = new ModelAndView();
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());
		//쓰기
		try{
			if(this.insReview(rev)) {
			mav.setViewName("Review/writeReview");
			this.getReview(rev);
			
            tran.commit(status);
		}
	}catch(Exception e){
		mav.setViewName("Review/writeReview");
        tran.rollback(status);
		
	}
		return mav;
}	


	private ArrayList<ReviewBean> getReview(ReviewBean rev) {
		return mapper.getReview(rev);
	}
	private boolean convetToBoolean(int data) {
		return data ==1 ? true : false;
	}
	
	private boolean insReview(ReviewBean rev) {
		return this.convetToBoolean(mapper.insReview(rev));
	}

	
	
	
	
}
