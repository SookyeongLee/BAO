package spring.bao.services;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import spring.bao.beans.MemberBean;
import com.google.gson.Gson;

import oracle.net.jdbc.TNSAddress.Description;
import spring.bao.mapper.ProfileIf;
import spring.bao.utils.Encryption;
import spring.bao.utils.ProjectUtils;

@Service
public class Profiles {

	public Profiles() {
	}

	@Autowired
	private HttpServletRequest request;
	@Autowired
	private HttpServletResponse response;
	@Autowired
	private ProfileIf mapper;
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private Gson gson;
	@Autowired
	private ProjectUtils pu;
	@Autowired
	private Encryption enc;

	public ModelAndView entrance(MemberBean memberbean) throws Exception {

		ModelAndView mav = new ModelAndView();

		// 로그인 세션아이디 저장
		memberbean.setMId((String) pu.getAttribute("mId"));

		switch (request.getRequestURI().substring(1)) {

		case "MyProfile":// 픽스화면 //프로필 //세션설정 ->ok
			mav = this.myProfileCtl(memberbean);
			break;
		case "ModifyProfile":// 수정화면 //프로필 모디파이 ->ok
			mav = this.modifyProfileCtl(memberbean);
			break;
		case "UpdateProfile":// 수정기능구현
			mav = this.updateProfileCtl(memberbean);
			break;

		}

		return mav;

	}

	private ModelAndView updateProfileCtl(MemberBean memberbean) throws Exception {
		ModelAndView mav = new ModelAndView();
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());

		if (enc.matches(memberbean.getMPwCk(), memberbean.getMPw())) {
			try {
				memberbean.setMPw(enc.encode(memberbean.getNewMPw()));
				if (this.updateProfile(memberbean)) {//업데이트
					//지역코드가 있으면 업데이트 
					if(memberbean.getMRcCode()!=null) {
						if(this.updateRg(memberbean)) {
							tran.commit(status);
							response.setContentType("text/html; charset=UTF-8"); 
				             PrintWriter out = response.getWriter();  
				             out.println("<script>alert('회원정보가 수정되었습니다.'); </script>"); 
				             out.flush();
				             
				             if (this.isRcCodeCheck(memberbean)) {
				 				String rgprofile = gson.toJson(this.getRgProfile(memberbean));
				 				mav.addObject("getProfile", rgprofile);
				 				mav.setViewName("Profile/profile");
				 			} else {
				 				String profile = gson.toJson(this.getProfile(memberbean));
				 				mav.addObject("getProfile", profile);
				 				mav.setViewName("Profile/profile");
				 			}
						}
					}else {//지역코드가 없으면 인서트 
						if(this.insRg(memberbean)) {
							tran.commit(status);
							response.setContentType("text/html; charset=UTF-8"); 
				             PrintWriter out = response.getWriter();  
				             out.println("<script>alert('회원정보가 수정되었습니다.'); </script>"); 
				             out.flush();
				             
				             if (this.isRcCodeCheck(memberbean)) {
				 				String rgprofile = gson.toJson(this.getRgProfile(memberbean));
				 				mav.addObject("getProfile", rgprofile);
				 				mav.setViewName("Profile/profile");
				 			} else {
				 				String profile = gson.toJson(this.getProfile(memberbean));
				 				mav.addObject("getProfile", profile);
				 				mav.setViewName("Profile/profile");
				 			}
						}
					}
					
				}
			} catch (Exception e) {
				tran.rollback(status);
				e.printStackTrace();

			}
		} else {
			 response.setContentType("text/html; charset=UTF-8");
             
             PrintWriter out = response.getWriter();
              
             out.println("<script>alert('비밀번호가 일치하지 않습니다.'); </script>");
              
             out.flush();
             
             if (this.isRcCodeCheck(memberbean)) {
 				String rgprofile = gson.toJson(this.getRgProfile(memberbean));
 				mav.addObject("getProfile", rgprofile);
 				mav.setViewName("Profile/profileModify");
 			} else {
 				String profile = gson.toJson(this.getProfile(memberbean));
 				mav.addObject("getProfile", profile);
 				mav.setViewName("Profile/profileModify");
 			}
		}
	

		return mav;
	}

	private ModelAndView modifyProfileCtl(MemberBean memberbean) throws Exception {
		ModelAndView mav = new ModelAndView();

		if (pu.getAttribute("mId") != null) {

			if (this.isRcCodeCheck(memberbean)) {
				String rgprofile = gson.toJson(this.getRgProfile(memberbean));
				mav.addObject("getProfile", rgprofile);
				mav.setViewName("Profile/profileModify");
			} else {
				String profile = gson.toJson(this.getProfile(memberbean));
				mav.addObject("getProfile", profile);
				mav.setViewName("Profile/profileModify");
			}
		} else {
			mav.setViewName("Authentication/login");
		}

		return mav;

	}

	private ModelAndView myProfileCtl(MemberBean memberbean) throws Exception {

		ModelAndView mav = new ModelAndView();

		if (pu.getAttribute("mId") != null) {

			if (this.isRcCodeCheck(memberbean)) {
				String rgprofile = gson.toJson(this.getRgProfile(memberbean));
				mav.addObject("getProfile", rgprofile);
				mav.setViewName("Profile/profile");
			} else {
				String profile = gson.toJson(this.getProfile(memberbean));
				mav.addObject("getProfile", profile);
				mav.setViewName("Profile/profile");
			}
		} else {
			mav.setViewName("Authentication/login");
		}

		return mav;

	}

	private boolean convertToBoolean(int data) {
		return data == 1 ? true : false;
	}

	private boolean updateProfile(MemberBean memberbean) {
		return convertToBoolean(mapper.updateProfile(memberbean));
	}

	private boolean isRcCodeCheck(MemberBean memberbean) {
		return convertToBoolean(mapper.isRcCodeCheck(memberbean));
	}
	
	private boolean insRg(MemberBean memberbean) {
		return convertToBoolean(mapper.insRg(memberbean));
	}
	
	private boolean updateRg(MemberBean memberbean) {
		return convertToBoolean(mapper.updateRg(memberbean));
	}

	private ArrayList<MemberBean> getProfile(MemberBean memberbean) {
		return mapper.getProfile(memberbean);
	}

	private ArrayList<MemberBean> getRgProfile(MemberBean memberbean) {
		return mapper.getRgProfile(memberbean);
	}

}
