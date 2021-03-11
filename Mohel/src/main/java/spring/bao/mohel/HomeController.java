package spring.bao.mohel;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import java.security.MessageDigestSpi;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring.bao.beans.BidBean;
import spring.bao.beans.MemberBean;
import spring.bao.beans.MessageBean;
import spring.bao.beans.RequestBean;
import spring.bao.beans.ReviewBean;
import spring.bao.beans.ScheduleBean;
import spring.bao.mapper.AuthenticationIf;

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
	private Home home;


	@RequestMapping(value = { "/", "/Main" }, method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView Main(@ModelAttribute RequestBean requestBean) {
		ModelAndView mav = new ModelAndView();
		
		mav = home.entrance(requestBean);
		
		return mav;
	}
	
	@RequestMapping(value = { "/LogInForm", "/Login", "/JoinForm", "/Join", "/Logout" }, method = { RequestMethod.GET,RequestMethod.POST })
	public ModelAndView Auth(@ModelAttribute MemberBean memberBean) throws IOException {

		ModelAndView mav = new ModelAndView();
		
		mav = auth.entrance(memberBean);
		
		return mav;
	}


	@RequestMapping(value = { "/MyProfile", "/ModifyProfile", "/UpdateProfile" }, method = { RequestMethod.GET,RequestMethod.POST })
	public ModelAndView Profile(@ModelAttribute MemberBean memberBean) {
		ModelAndView mav = new ModelAndView();
		memberBean.setMId("PPP");
		mav = pro.entrance(memberBean);
		
		return mav;
	}

	@RequestMapping(value = { "/MyDeal", "/Detail", "/Waiting", "/Ing", "/End", "/Search", "/Filter" }, method = {RequestMethod.GET, RequestMethod.POST })
	public ModelAndView Deal(@ModelAttribute RequestBean requestBean) {
		ModelAndView mav = new ModelAndView();
		
		mav = deal.entrance(requestBean);
		
		return mav;
	}

	@RequestMapping(value = { "/DealForm", "/ReqSend", "/ModifyForm", "/Modify", "/Delete" }, method = {
			RequestMethod.GET, RequestMethod.POST })
	public ModelAndView RequestDeal(@ModelAttribute RequestBean requestBean, BidBean bidBean) throws IOException {
		ModelAndView mav = new ModelAndView();
		
		mav = rqd.entrance(requestBean, bidBean);
		
		return mav;
	}

	@RequestMapping(value = { "/MovePro", "/InsSchedule", "/UpdateSchedule", "/MoveUser", "/AcceptSchedule",
			"/RejectSchedule", "/OkClick" }, method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView Schedule(@ModelAttribute ScheduleBean scheduleBean) {

		ModelAndView mav = new ModelAndView();

		mav = schedule.entrance(scheduleBean);

		return mav;
	}

	@RequestMapping(value = { "/WriteReview", "/ViewReview", "/ShowReview" }, method = { RequestMethod.GET,RequestMethod.POST })
	public ModelAndView Review(@ModelAttribute ReviewBean reviewBean) {
		ModelAndView mav = new ModelAndView();

		mav = review.entrance(reviewBean);
		
		return mav;
	}

	@RequestMapping(value = { "/PriceDetail", "/RegisterBid", "/Accept", "/Reject" }, method = { RequestMethod.GET,RequestMethod.POST })
	public ModelAndView Bid(@ModelAttribute BidBean bidBean) {
		ModelAndView mav = new ModelAndView();

		mav = bid.entrance(bidBean);

		return mav;
	}

	@RequestMapping(value = { "/RecBox", "/Profile", "/Title", "/SendBox", "/Reply", "/Send" }, method = {RequestMethod.GET, RequestMethod.POST })
	public ModelAndView Messages(@ModelAttribute MessageBean messageBean) {
		ModelAndView mav = new ModelAndView();
		
		mav = msg.entrance(messageBean);
		
		return mav;
	}

}
