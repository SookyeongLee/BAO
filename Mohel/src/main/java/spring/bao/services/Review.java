package spring.bao.services;


import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class Review {
	
	public Review() {}
	
	
	public ModelAndView entrance() {
		ModelAndView mav = new ModelAndView();
		mav = this.reviewCtl();
		return mav;
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
