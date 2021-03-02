package spring.bao.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class Profiles {
	
	public Profiles() {}
	@Autowired
	private HttpServletRequest request;
	
	public ModelAndView entrance() {
		
	
		ModelAndView mav = new ModelAndView();
		
		switch(request.getRequestURI().substring(1)) {
		
		case "MyProfile":
			this.myProfileCtl();
			break;
		case "ModifyProfile":
			this.modifyProfileCtl();
			break;
		case "UpdateProfile":
			this.updateProfileCtl();
			break;
		}
	
		return mav;
	
		
	}
	private ModelAndView updateProfileCtl() {
		ModelAndView mav = new ModelAndView();
		System.out.println("updateProfileCtl");
//		this.updateProfile();
		mav.setViewName("home");
		return mav;			
	
	}
	
	private ModelAndView modifyProfileCtl() {
		ModelAndView mav = new ModelAndView();
		System.out.println("modifyProfileCtl");
//		this.getFixableProfile();
		mav.setViewName("home");
		return mav;			
	
	}
	
	private ModelAndView myProfileCtl() {
		ModelAndView mav = new ModelAndView();
		System.out.println("myProfileCtl");
//		if(this.isSession) {
//			this.getMyProfile();
//		}else {
//			//로그인창 이동  
//		}
		mav.setViewName("home");
		return null;			
	
	}
}
	