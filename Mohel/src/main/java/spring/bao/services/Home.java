package spring.bao.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.RequestBean;
import spring.bao.mapper.AuthenticationIf;

@Service

public class Home {
	
	public Home() {}
	@Autowired
	private Gson gson;
	@Autowired
	private AuthenticationIf mapper;
	
	public ModelAndView entrance(RequestBean requestBean) {
		ModelAndView mav = new ModelAndView();
	
				mav = this.mainCtl(requestBean);
	
				return mav;
	}


	private ModelAndView mainCtl(RequestBean requestBean) {
		ModelAndView mav = new ModelAndView();

	    String json = gson.toJson(this.getRecentList(requestBean));		

	    mav.addObject("jsonData", json);
		
		
		mav.setViewName("Authentication/main");
		
		return mav;
	}


	  

	   private ArrayList<RequestBean> getRecentList(RequestBean reqBean) {
	      return mapper.getRecentList(reqBean);
	   }
}


