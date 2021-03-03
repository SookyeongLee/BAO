package spring.bao.mohel;

import java.security.MessageDigestSpi;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spring.bao.beans.MemberBean;
import spring.bao.beans.MessageBean;
import spring.bao.beans.ScheduleBean;
import spring.bao.services.Authentication;
import spring.bao.services.Bid;
import spring.bao.services.Deal;
import spring.bao.services.Messages;
import spring.bao.services.Profiles;
import spring.bao.services.RequestDeal;
import spring.bao.services.Review;
import spring.bao.services.Schedule;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private Authentication auth;
	@Autowired
	private Profiles pro;
	@Autowired
	private Deal deal;
	@Autowired
	private Schedule schedule;
	@Autowired
	private Review review;
	@Autowired
	private Bid bid;
	@Autowired
	private RequestDeal rqd;
	@Autowired
	private Messages msg;
	@Autowired
	private HttpServletRequest request;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
//	@RequestMapping(value = {"/","/Main","/LoginForm","/Login","/JoinForm","/Join","/Logout",
//			"/MyProfile","/ModifyProfile","/UpdateProfile","/DealForm"},
//			method = {RequestMethod.GET,RequestMethod.POST})
//	public ModelAndView Auth(Locale locale, Model model) {
//		ModelAndView mav = new ModelAndView();
//		System.out.println(request.getRequestURI().substring(1));
//		mav = auth.entrance();
//		return mav;
//	}
	
	@RequestMapping(value = {"/","/Main","/LoginForm","/Login","/JoinForm","/Join","/Logout"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Auth(@ModelAttribute MemberBean memberbean) {
		ModelAndView mav = new ModelAndView();
		
	//	System.out.println(request.getRequestURI().substring(1));
		 memberbean.setSCode(request.getRequestURI().substring(1));
		System.out.println(request.getRequestURI().substring(1));
		 mav = auth.entrance(memberbean);
		return mav;
	}
	
	
	@RequestMapping(value = {"/MyProfile","/ModifyProfile","/UpdateProfile"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Profile() {
		ModelAndView mav = new ModelAndView();
		
		mav = pro.entrance();
		return mav;
	}
	
	@RequestMapping(value = {"/MyDeal","/Detail","/Waiting","/Ing","/End","/Search","/Filter"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Deal() {
		ModelAndView mav = new ModelAndView();
		
		mav = deal.entrance();
		return mav;
	}
	
	@RequestMapping(value = {"/DealForm","/ReqSend","/ModifyForm","/Modify","/delete"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView RequestDeal() {
		ModelAndView mav = new ModelAndView();
		
		mav = rqd.entrance();
		return mav;
	}
	
	@RequestMapping(value = {"/MovePro","/InsSchedule","/UpdateSchedule","/MoveUser",
			"/AcceptSchedule","/RejectSchedule","/OkClick"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Schedule(@ModelAttribute ScheduleBean schedulebean) {
		ModelAndView mav = new ModelAndView();
		 
		schedulebean.setScCode(request.getRequestURI().substring(1));
	
		mav = schedule.entrance(schedulebean);
		return mav;
	}
	
	@RequestMapping(value = {"/writeReviewForm" , "/Review" ,"showReview"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Review() {
		ModelAndView mav = new ModelAndView();
		
		mav = review.entrance();
		return mav;
	}
	
	@RequestMapping(value = {"/PriceDetail","/RegisterBid","/Accept","/Reject"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Bid() {
		ModelAndView mav = new ModelAndView();
		
		mav = bid.entrance();
		
		return mav;
	}
	
	@RequestMapping(value = {"/RecBox","/Profile","/Title","/SendBox","/Reply","/Send"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Messages(@ModelAttribute MessageBean message) {
		ModelAndView mav = new ModelAndView();
		
		mav = msg.entrance();
		return mav;
	}


	
}
