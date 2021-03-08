package spring.bao.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.MemberBean;
import spring.bao.mapper.AuthenticationIF;


@Service
public class Authentication {
	
	public Authentication() {}
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private AuthenticationIF mapper;
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private Gson gson;
	
	

		public ModelAndView entrance(MemberBean memberbean) {
			
			ModelAndView mav = new ModelAndView();
			
			switch(memberbean.getSCode()) {
				
				case "" : 
					mav= this.mainCtl(memberbean);
					break;
				case "Main":
					mav = this.mainCtl(memberbean);
					break;
				case "LogInForm":
					mav = this.loginFormCtl(memberbean);
					break;
				case "Login":
					mav = this.loginCtl(memberbean);
					break;
				case "JoinForm":
					mav = this.joinFormCtl(memberbean);
					break;
				case "Join":
					mav =this.joinCtl(memberbean);
					break;
				case "Logout":
					mav =this.logoutCtl(memberbean);
					break;
			}
			return mav;
		}
	

		private ModelAndView logoutCtl(MemberBean member) {
			ModelAndView mav = new ModelAndView();
			System.out.println("logoutCtl");
			
			//if(this.isSession()) {
				this.insAccess(member);
			
				mav.setViewName("main");
			
				return mav;			
		}
		
		private ModelAndView joinCtl(MemberBean member) {
			TransactionStatus status =tran.getTransaction(new DefaultTransactionDefinition());
			
			ModelAndView mav = new ModelAndView();
			//System.out.println("joinCtl");
			if(this.isMember(member)) {
				mav.setViewName("login"); //로그인폼 화면 
			}else {
				this.insMember(member);
				mav.setViewName("login");
				tran.commit(status);
				
			}
			
			return mav;			
		}
	


		private boolean convetToBoolean(int data) {
			return data ==1 ? true : false;
		}
		private boolean insMember(MemberBean member) {
			
			return this.convetToBoolean(mapper.insMember(member));
		}


		private boolean isMember(MemberBean member) {
			
			return this.convetToBoolean(mapper.isMember(member));
		}


		private ModelAndView joinFormCtl(MemberBean member) {
			ModelAndView mav = new ModelAndView();
			System.out.println("joinFormCtl");
			mav.setViewName("join");
			return mav;			
		}
		private ModelAndView loginCtl(MemberBean member) {
			TransactionStatus status =tran.getTransaction(new DefaultTransactionDefinition());
			
			ModelAndView mav = new ModelAndView();
			System.out.println("main");
			System.out.println(member.getMId());

				if(this.isMember(member)) {
					if(this.isAccess(member)) {
						member.setMStCode("1");
						//System.out.println(member.getMId());
						this.insAccess(member);
						mav.setViewName("main");
						tran.commit(status);
					
					}
				}
			return mav;			
		}

		private boolean insAccess(MemberBean member) {
			return this.convetToBoolean(mapper.insAccess(member));
			
		}


		private boolean isAccess(MemberBean member) {
			return this.convetToBoolean(mapper.isAccess(member));
		}


		private ModelAndView loginFormCtl(MemberBean member) {
			ModelAndView mav = new ModelAndView();
			System.out.println("loginFormCtl");
			mav.setViewName("login");
			return mav;			
		}

		private ModelAndView mainCtl(MemberBean member) {
			ModelAndView mav = new ModelAndView();
			//this.getRecentList();
			Gson gson = new Gson();
			//String jsonData = gson.toJson(mapper.getRecentList());
			//mav.addObject();
			
			
			mav.setViewName("main");
			
			return mav;
		}








}
