package spring.bao.services;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonElement;

import spring.bao.beans.ReviewBean;
import spring.bao.mapper.ReviewIF;

@Service
public class Review {
	
	public Review() {}
	
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private Gson gson;
	@Autowired
	private ReviewIF mapper;
	
	
	
	public ModelAndView entrance(ReviewBean rev) {
		ModelAndView mav = new ModelAndView();
		switch(rev.getRvCode()) {
		
		case "writeReviewForm":
			mav = this.writeReviewFormCtl();
			break;
		case "Review":
			mav = this.reviewCtl(rev);
			break;
		case "showReview":
			mav = this.showReviewCtl(rev);
			break;
		
		}
			return mav;
	}

	private ModelAndView showReviewCtl(ReviewBean rev) {
		ModelAndView mav = new ModelAndView();
		
//		this.getReview()
			Gson gson = new Gson();
			String jsonData = gson.toJson(this.getReview(rev));
			System.out.println(jsonData);
			//mav.addObject(jsonData,jsonData);
				
				
			mav.setViewName("review");
		
		return mav;
	}
	



	private ArrayList<ReviewBean> getReview(ReviewBean rev) {
		return mapper.getReview(rev);
	}

	private ModelAndView writeReviewFormCtl() {
		ModelAndView mav = new ModelAndView();
		
		System.out.println("writeReviewFormCtl");
		
		mav.setViewName("review");
		
		return mav;
		
	}


	private ModelAndView reviewCtl(ReviewBean rev) {
		ModelAndView mav = new ModelAndView();
//		if(this.isReview(rev)) {
//			mav.setViewName("review");
//			this.getReview(rev);
//		}else {
//			if(로그인 == ㄱ요청글쓴사람) {
//				this.writeReviewForm(rev);
//			}esle{
//				//등록된 리뷰 없
//			}
//		}
		return mav;
	}
	
}
