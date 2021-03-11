package spring.bao.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.RequestBean;
import spring.bao.mapper.DealIf;

@Service

public class Home {
	
	public Home() {}
	@Autowired
	private Gson gson;
	@Autowired
	private DealIf mapper;
	
	public ModelAndView entrance(RequestBean requestBean) {
		ModelAndView mav = new ModelAndView();
	
				mav = this.mainCtl(requestBean);
	
				return mav;
	}


	private ModelAndView mainCtl(RequestBean requestBean) {
		ModelAndView mav = new ModelAndView();

		String json = gson.toJson(this.getFilterList(requestBean));
	    String json2 = gson.toJson(this.getBestFilterList(requestBean));		

	    mav.addObject("requestData", json);
	    mav.addObject("requestBestData", json2);
		
		
		mav.setViewName("Authentication/main");
		
		return mav;
	}


	  private ArrayList<RequestBean> getBestFilterList(RequestBean reqBean) {
	      return mapper.BestFilterList(reqBean);
	   }

	   private ArrayList<RequestBean> getFilterList(RequestBean reqBean) {
	      return mapper.filterList(reqBean);
	   }
}


