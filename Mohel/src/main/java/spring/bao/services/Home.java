package spring.bao.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonElement;


import spring.bao.beans.RequestBean;
import spring.bao.mapper.AuthenticationIF;

@Service

public class Home {
	
	public Home() {}
	@Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private Gson gson;
	@Autowired
	private AuthenticationIF mapper;
	
	public ModelAndView entrance(RequestBean req) {
		ModelAndView mav = new ModelAndView();
		
		switch(req.getRqCode()) {
			
			case "" : 
				mav= this.mainCtl(req);
				break;
			case "Main":
				mav = this.mainCtl(req);
				break;
		}
				return mav;
	}
	
	



	private ModelAndView mainCtl(RequestBean req) {
		ModelAndView mav = new ModelAndView();
		//this.getRecentList();
		
		String jsonData = gson.toJson(this.getRecentList(req));
		//System.out.println(jsonData);
		
		//mav.addObject();
		mav.addObject("jsonData",jsonData);
		//System.out.println("값이 들어온다 들어온다 들어온다");
		
		mav.setViewName("Authentication/main");
		
		return mav;
	}


	private ArrayList<RequestBean> getRecentList(RequestBean req) {
		return mapper.getRecentList(req);
	}
}


