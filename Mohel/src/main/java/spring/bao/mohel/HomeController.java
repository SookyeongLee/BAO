package spring.bao.mohel;

import java.io.IOException;
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

import spring.bao.beans.BidBean;
import spring.bao.beans.MemberBean;
import spring.bao.beans.RequestBean;
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
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
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
	private HttpServletRequest hsr;
	
	ModelAndView mav = null;


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
	
	@RequestMapping(value = {"/","/Main","/LogInForm","/Login","/JoinForm","/Join","/Logout"},
			method = {RequestMethod.GET,RequestMethod.POST})
		public ModelAndView Auth(@ModelAttribute MemberBean member) {
		ModelAndView mav = new ModelAndView();
		member.setSCode(hsr.getRequestURI().substring(1));
		
//	mav.setViewName("Profile/profileClick");
	mav = auth.entrance(member);
		return mav;
	}
	
	@RequestMapping(value = {"/MyProfile","/ModifyProfile","/UpdateProfile"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Profile(@ModelAttribute MemberBean member) {
		ModelAndView mav = new ModelAndView();
		member.setSCode(hsr.getRequestURI().substring(1));
		mav = pro.entrance(member);
		return mav;
	}
	
	@RequestMapping(value = {"/MyDeal","/Detail","/Waiting","/Ing","/End","/Search","/Filter"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Deal(RequestBean request, BidBean bid) {
		ModelAndView mav = new ModelAndView();
		request.setSCode(hsr.getRequestURI().substring(1));
		mav = deal.entrance(request, bid);
		return mav;
	}
	
	@RequestMapping(value = {"/DealForm","/ReqSend","/ModifyForm","/Modify","/Delete"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView RequestDeal(@ModelAttribute RequestBean request, BidBean bid) throws IOException {
		ModelAndView mav = new ModelAndView();
		request.setSCode(hsr.getRequestURI().substring(1));
		System.out.println(hsr.getRequestURI().substring(1));
		mav = rqd.entrance(request, bid);
		return mav;
	}
	
	@RequestMapping(value = {"/MovePro","/InsSchedule","/UpdateSchedule","/MoveUser",
			"/AcceptSchedule","/RejectSchedule","/OkClick"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Schedule(@ModelAttribute ScheduleBean sc) {
		ModelAndView mav = new ModelAndView();
		sc.setSCode(hsr.getRequestURI().substring(1));
		System.out.println(hsr.getRequestURI().substring(1));
		mav = schedule.entrance(sc);
		return mav;
	}
	
	@RequestMapping(value = {"/Review"},
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
		System.out.println();
		return mav;
	}
	
	@RequestMapping(value = {"/RecBox","/Profile","/Title","/SendBox","/Reply","/Send"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Messages() {
		ModelAndView mav = new ModelAndView();
		
		mav = msg.entrance();
		return mav;
	}
	@RequestMapping(value = "/kakao", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "Authentication/kakaotest";

	}
}
