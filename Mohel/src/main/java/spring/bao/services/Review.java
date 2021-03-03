package spring.bao.services;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class Review {
	
	public Review() {}
	
	@Autowired
	private HttpServletRequest request;
	
	
	public ModelAndView entrance() {
		ModelAndView mav = new ModelAndView();
		switch(request.getRequestURI().substring(1)) {
		
		case "writeReviewForm":
			this.writeReviewFormCtl();
			break;
		case "Review":
			this.reviewCtl();
			break;
		case "showReview":
			this.showReviewCtl();
			break;
		
		//mav = this.reviewCtl();
		}
			return mav;
	}

	private void showReviewCtl() {
		// TODO Auto-generated method stub
		
	}




	private void writeReviewFormCtl() {
		// TODO Auto-generated method stub
		
	}


	private ModelAndView reviewCtl() {
		ModelAndView mav = new ModelAndView();
//		if(this.isReview()) {
//			this.getReview();
//		}else {
//			if(로그인 == ㄱ요청글쓴사람) {
//				this.writeReviewForm();
//			}esle{
//				//등록된 리뷰 없
//			}
//		}
		return mav;
	}
	
}
