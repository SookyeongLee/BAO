package spring.bao.mohel;

import java.io.IOException;
<<<<<<< HEAD
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
=======
>>>>>>> refs/remotes/origin/DOYOUNG
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring.bao.beans.BidBean;
import spring.bao.beans.MemberBean;
<<<<<<< HEAD
import spring.bao.beans.MessageBean;
import spring.bao.beans.RequestBean;
import spring.bao.beans.ReviewBean;
import spring.bao.beans.ScheduleBean;
import spring.bao.mapper.AuthenticationIF;
=======
import spring.bao.beans.RequestBean;
import spring.bao.beans.ScheduleBean;
>>>>>>> refs/remotes/origin/DOYOUNG
import spring.bao.services.Authentication;
import spring.bao.services.Bid;
import spring.bao.services.Deal;
import spring.bao.services.Home;
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
<<<<<<< HEAD
	private HttpServletRequest request;
	@Autowired
	private Home home;
=======
	private HttpServletRequest hsr;
	
	ModelAndView mav = null;

>>>>>>> refs/remotes/origin/DOYOUNG

	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws IOException 
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
	
<<<<<<< HEAD
	@RequestMapping(value = {"/LogInForm","/Login","/JoinForm","/Join","/Logout"},
=======
	@RequestMapping(value = {"/","/Main","/LogInForm","/Login","/JoinForm","/Join","/Logout"},
>>>>>>> refs/remotes/origin/DOYOUNG
			method = {RequestMethod.GET,RequestMethod.POST})
<<<<<<< HEAD
	public ModelAndView Auth(@ModelAttribute MemberBean memberbean) throws IOException {
=======
		public ModelAndView Auth(@ModelAttribute MemberBean member) {
>>>>>>> refs/remotes/origin/DOYOUNG
		ModelAndView mav = new ModelAndView();
<<<<<<< HEAD
=======
		member.setSCode(hsr.getRequestURI().substring(1));
>>>>>>> refs/remotes/origin/DOYOUNG
		
<<<<<<< HEAD

	//	System.out.println(request.getRequestURI().substring(1));
		 memberbean.setSCode(request.getRequestURI().substring(1));
		
		 mav = auth.entrance(memberbean);
=======
	mav.setViewName("Profile/profileClick");

>>>>>>> refs/remotes/origin/DOYOUNG
		return mav;
	}
	
	@RequestMapping(value = {"/","/Main"},
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Main(@ModelAttribute RequestBean req) {
		ModelAndView mav = new ModelAndView();
		
		 req.setRqCode(request.getRequestURI().substring(1));
		
		 mav = home.entrance(req);
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
	public ModelAndView Deal() {
		ModelAndView mav = new ModelAndView();
		
		mav = deal.entrance();
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
<<<<<<< HEAD
	public ModelAndView Schedule(@ModelAttribute ScheduleBean schedulebean) {
=======
	public ModelAndView Schedule(@ModelAttribute ScheduleBean sc) {
>>>>>>> refs/remotes/origin/DOYOUNG
		ModelAndView mav = new ModelAndView();
<<<<<<< HEAD
		 
		schedulebean.setScCode(request.getRequestURI().substring(1));
	
		mav = schedule.entrance(schedulebean);
=======
		sc.setSCode(hsr.getRequestURI().substring(1));
		System.out.println(hsr.getRequestURI().substring(1));
		mav = schedule.entrance(sc);
>>>>>>> refs/remotes/origin/DOYOUNG
		return mav;
	}
	
	@RequestMapping(value = {"/WriteReview" , "/ViewReview", "/ShowReview" },
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Review(@ModelAttribute ReviewBean rev) {
		ModelAndView mav = new ModelAndView();
//		rev.setRvWirqCode("6000210307090359");
//		rev.setRvHelper("JUN");
//		rev.setRvStar("5");
//		rev.setRvComment("나쁘지않아요");
		rev.setSCode(request.getRequestURI().substring(1));
		
		
		mav = review.entrance(rev);
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
