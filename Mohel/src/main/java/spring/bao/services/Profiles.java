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

		System.out.println("updateProfileCtl");
		
		System.out.println(memberbean.getMId());
		System.out.println(memberbean.getMEmail());
		System.out.println(memberbean.getMDivision());
		System.out.println(memberbean.getMRcCode());
		System.out.println(memberbean.getMCareer());
	
		
		
		try {
			if (this.updateProfile(memberbean)) {
				System.out.println("업데이트 프로필1");
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
		// this.getProfile(memberbean); //myProfileCtl 세션 체크후 프로필 정보 가져오기 || //수정하기 누르면
		// 프로필 정보 불러오면서 수정가능한 상태로 가능 이때 select update 두개가 있어야하는가 ?

		String json = gson.toJson(this.getProfile(memberbean));
		mav.addObject("getProfile", json);
		System.out.println("ModifyCtl 진입  Json " + json);

		mav.setViewName("Profile/profileModify");
		return mav;

	}

	private ModelAndView myProfileCtl(MemberBean memberbean) {
		System.out.println("진입");
		ModelAndView mav = new ModelAndView();
		if(this.isRgNameCheck(memberbean)) {
			String json = gson.toJson(this.getProfile(memberbean));
			
			mav.addObject("getProfile", json);
			System.out.println("마이프로필1" + json);
			mav.setViewName("Profile/profile");
		}else {
		String json = gson.toJson(this.getProfile(memberbean));
		
		mav.addObject("getProfile", json);
		System.out.println("마이프로필2" + json);
		mav.setViewName("Profile/profile");

		// if(this.isSession) {
//			this.getMyProfile();
//		}else {
//			//로그인창 이동  
//		}
		
		}
		
		return mav;

	}

	private boolean convertToBoolean(int data) {
		System.out.println(data);
		return data == 1 ? true : false;
	}

	private boolean updateProfile(MemberBean memberbean) {
		System.out.println("updateprofile mapper 진입");
		return convertToBoolean(mapper.updateProfile(memberbean));
	}

	private ArrayList<MemberBean> getProfile(MemberBean memberbean) {
		System.out.println("getProfile mapper 진입");
		return mapper.getProfile(memberbean);
	}

	

	
	private boolean isRgNameCheck(MemberBean memberbean) {
		System.out.println("isRgNameCheck mapper 진입");
		return convertToBoolean(mapper.isRgNameCheck(memberbean));
	}
	
}
