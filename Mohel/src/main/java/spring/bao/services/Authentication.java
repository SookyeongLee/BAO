package spring.bao.services;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.MemberBean;
import spring.bao.mapper.AuthenticationIf;

@Service
public class Authentication {

	public Authentication() {
	}

	@Autowired
	HttpServletResponse response;
	@Autowired
	private AuthenticationIf mapper;
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private Gson gson;

	public ModelAndView entrance(MemberBean memberbean) throws IOException {

		ModelAndView mav = new ModelAndView();

		switch (memberbean.getSCode()) {

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
			mav = this.joinCtl(memberbean);
			break;
		case "Logout":
			mav = this.logoutCtl(memberbean);
			break;
		}
		return mav;
	}

	private ModelAndView logoutCtl(MemberBean member) {
		ModelAndView mav = new ModelAndView();
		System.out.println("logoutCtl");

		// if(this.isSession()) {
		this.insAccess(member);
		// member.setMStCode("-1");

		mav.setViewName("main");
		mav.addObject("mag", "logout");

		return mav;

	}

	private ModelAndView joinCtl(MemberBean member) {
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());

		ModelAndView mav = new ModelAndView();
		// System.out.println("joinCtl");
		if (this.isMember(member)) {
			mav.setViewName("login"); // 로그인폼 화면

		} else {
			member.setMRcCode("99");
			this.insMember(member);
			mav.setViewName("login");

		}

		return mav;
	}

	private boolean convetToBoolean(int data) {
		return data == 1 ? true : false;
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

	private ModelAndView loginCtl(MemberBean member) throws IOException {

		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());

		ModelAndView mav = new ModelAndView();
		// System.out.println("main");
		System.out.println(member.getMId());

		if (this.isMember(member)) {
			if (this.isAccess(member)) {
				member.setMStCode("1");

				this.insAccess(member);
				mav.setViewName("Authentication/main");
				tran.commit(status);

			} else {
				System.out.println("로그인 실패");
				response.setContentType("text/html; charset=UTF-8");

				PrintWriter out = response.getWriter();

				out.println("<script>alert('로그인 실패'); location.href='이동주소';</script>");

				out.flush();
				mav.setViewName("Authentication/login");
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

		// System.out.println("loginFormCtl");
		System.out.println("loginFormCtl");
		mav.setViewName("login");
		return mav;
	}

	private ModelAndView mainCtl(MemberBean member) {
		ModelAndView mav = new ModelAndView();
//			this.getRecentList();
		Gson gson = new Gson();
//			String jsonData = gson.toJson(mapper.getRecentList(member));

		mav.setViewName("main");

		return mav;
	}

}
