package spring.bao.services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.MemberBean;
import spring.bao.mapper.ProfileIf;

@Service
public class Profiles {

	public Profiles() {
	}

	@Autowired
	private ProfileIf mapper;
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private Gson gson;

	public ModelAndView entrance(MemberBean memberbean) {

		ModelAndView mav = new ModelAndView();

		switch (memberbean.getSCode()) {

		case "MyProfile":
			mav = this.myProfileCtl(memberbean);
			break;
		case "ModifyProfile":
			mav = this.modifyProfileCtl(memberbean);
			break;
		case "UpdateProfile":
			mav = this.updateProfileCtl(memberbean);
			break;
		}

		return mav;

	}

	private ModelAndView updateProfileCtl(MemberBean memberbean) {
		ModelAndView mav = new ModelAndView();
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());
		
		try {
			if (this.updateProfile(memberbean)) {
					String json = gson.toJson(this.getProfile(memberbean));
					mav.addObject("getProfile", json);
					tran.commit(status);
				}
		} catch (Exception e) {
			tran.rollback(status);

		}
		mav.setViewName("Profile/profile");
		return mav;
	}

	private ModelAndView modifyProfileCtl(MemberBean memberbean) {
		ModelAndView mav = new ModelAndView();

		String json = gson.toJson(this.getProfile(memberbean));
		mav.addObject("getProfile", json);

		mav.setViewName("Profile/profileModify");
		return mav;

	}

	private ModelAndView myProfileCtl(MemberBean memberbean) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println(memberbean.getMId());
//			this.isRgNameCheck(memberbean);
			String json = gson.toJson(this.getProfile(memberbean));
			System.out.println("getProfile 매퍼 다녀옴 ");
			mav.addObject("getProfile", json);
			mav.setViewName("Profile/profile");
		
				return mav;

		// if(this.isSession) {
//			this.getMyProfile();
//		}else {
//			//로그인창 이동  
//		}
		
		
	

	}

	private boolean convertToBoolean(int data) {
		return data == 1 ? true : false;
	}

	private boolean updateProfile(MemberBean memberbean) {
		return convertToBoolean(mapper.updateProfile(memberbean));
	}

	private ArrayList<MemberBean> getProfile(MemberBean memberbean) {
		return mapper.getProfile(memberbean);
	}

	

	
	private boolean isRgNameCheck(MemberBean memberbean) {
		return convertToBoolean(mapper.isRgNameCheck(memberbean));
	}
	
}
