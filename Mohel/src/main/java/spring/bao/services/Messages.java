package spring.bao.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import spring.bao.beans.MessageBean;


@Service
public class Messages {

		public Messages() {}
		@Autowired
		private HttpServletRequest request;

		public ModelAndView entrance() {
			
			ModelAndView mav = new ModelAndView();
			
			switch(request.getRequestURI().substring(1)) {
			
			case "RecBox":
				this.recBoxCtl();
				break;
			case "Profile":
				this.profileCtl();
				break;
			case "Title":
				this.tiltleCtl();
				break;
			case "SendBox":
				this.sendBoxCtl();
				break;
			case "Reply":
				this.replyCtl();
				break;
			case "Send":
				this.sendCtl();
				break;
			}
		
			return mav;
		
		}
		
		private ModelAndView sendCtl() {
			
			ModelAndView mav = new ModelAndView();
//			this.insSendBox();
//			this.insHelperBox();
			return mav;
		}
		
		private ModelAndView replyCtl() {
			
			ModelAndView mav = new ModelAndView();
//			this.getSendList();
			return mav;
		}
		
		
		private ModelAndView sendBoxCtl() {
			
			ModelAndView mav = new ModelAndView();
//			this.getSendList();
			return mav;
		}

		private ModelAndView tiltleCtl() {
			
			ModelAndView mav = new ModelAndView();
//			this.getMsgDetail();
			return mav;
		}
	

		private ModelAndView profileCtl() {
			
			ModelAndView mav = new ModelAndView();
//			this.getProfile();
			return mav;
		}
		
		private ModelAndView recBoxCtl() {
			
			ModelAndView mav = new ModelAndView();
//			this.getRecList();
			return mav;
		}
}
