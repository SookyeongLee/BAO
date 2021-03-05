package spring.bao.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import spring.bao.beans.MemberBean;


@Service
public class Authentication {
	
	public Authentication() {}
	@Autowired
	private HttpServletRequest request;
	
	
	

		public ModelAndView entrance(MemberBean memberbean) {
			
			ModelAndView mav = new ModelAndView();
		//	System.out.println("들어옴"+request.getRequestURI().substring(1));
			switch(request.getRequestURI().substring(1)) {
					case  "":
					mav = this.mainCtl();
					System.out.println("ddd");
					break;
				case "Main":
					mav = this.mainCtl();
					System.out.println();
					break;
				case "LoginForm":
					mav = this.loginFormCtl();
					break;
				case "Login":
					mav = this.loginCtl();
					break;
				case "JoinForm":
					mav = this.joinFormCtl();
					break;
				case "Join":
					mav = this.joinCtl();
					break;
				case "Logout":
					mav = this.logoutCtl();
					break;
			}
			return mav;
		}
	
		
		private ModelAndView logoutCtl() {
			ModelAndView mav = new ModelAndView();
			System.out.println("logoutCtl");
			mav.setViewName("home");
//			if(this.isSession()) {
//				this.insAccess()
//			}
			return mav;			
		}
		
		private ModelAndView joinCtl() {
			ModelAndView mav = new ModelAndView();
			System.out.println("joinCtl");
//			if(this.isMember()) {
//				this.insMember()
//			}
			mav.setViewName("home");
			return mav;			
		}
		
		private ModelAndView joinFormCtl() {
			ModelAndView mav = new ModelAndView();
			System.out.println("joinFormCtl");
			mav.setViewName("home");
			return mav;			
		}
		private ModelAndView loginCtl() {
			ModelAndView mav = new ModelAndView();
			System.out.println("loginCtl");
//			if(this.isSession()) {
//				if(this.isMember()) {
//					if(this.isAccess()) {
//						this.insAccess()
//					}
//				}
//			}
			mav.setViewName("home");
			return mav;			
		}

		private ModelAndView loginFormCtl() {
			ModelAndView mav = new ModelAndView();
			System.out.println("loginFormCtl");
			mav.setViewName("home");
			return mav;			
		}

		private ModelAndView mainCtl() {
			ModelAndView mav = new ModelAndView();
			System.out.println("mainCtl");
		//	this.getRecentList();
			mav.setViewName("main");
			System.out.println("왜안들어가냐 여기까지 왔는데도");
			return mav;
		}
		
}
