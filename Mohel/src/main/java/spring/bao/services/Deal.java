package spring.bao.services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.MvcNamespaceHandler;

import com.google.gson.Gson;
import com.google.gson.JsonElement;

import spring.bao.beans.RequestBean;
import spring.bao.mapper.DealIf;



@Service
public class Deal {

   public Deal() {}
   
    @Autowired
    private DealIf mapper;
    @Autowired
	private PlatformTransactionManager tran;
	@Autowired
	private Gson gson;
   
   public ModelAndView entrance(RequestBean reqBean) {
      ModelAndView mav = new ModelAndView();
      
      switch(reqBean.getACode()) {
      
      case "MyDeal":
         mav = this.myDealCtl(reqBean);
         break;
      case "Detail":
         mav = this.detailCtl(reqBean);
         break;
      case "Waiting":
    	 mav = this.waitingCtl(reqBean);
         break;
      case "Ing":
    	 mav = this.ingCtl(reqBean);
         break;
      case "End":
    	 mav = this.endCtl(reqBean);
         break;
      case "Search":
    	 mav = this.searchCtl(reqBean);
         break;
      case "Filter":
    	 mav = this.filterCtl(reqBean);
         break;
      }
      return mav;
   }

   
   private ModelAndView filterCtl(RequestBean reqBean) {
      ModelAndView mav = new ModelAndView();
		String json = gson.toJson(this.getFilterList(reqBean));
		mav.addObject("requestData", json);
		mav.setViewName("main");
      return mav;
   }
   
   
   private ArrayList<RequestBean> getFilterList(RequestBean reqBean) {
	   return mapper.filterList(reqBean);
	   }

private ModelAndView searchCtl(RequestBean reqBean) {
      ModelAndView mav = new ModelAndView();
      
    if(reqBean.getRqWord().equals("")) { 
    	String json = gson.toJson(this.getAllSearchList(reqBean));
        mav.addObject("searchData",json);
        mav.setViewName("main");
    }else {
    	String json = gson.toJson(this.getSearchList(reqBean));
        mav.addObject("searchData",json);
        mav.setViewName("main");;
        
    }   
      return mav;
   }
   
   private ArrayList<RequestBean> getAllSearchList(RequestBean reqBean) {
	return mapper.allSearchList(reqBean);
}


private ArrayList<RequestBean> getSearchList(RequestBean reqBean) {
	
	   return mapper.searchList(reqBean);
}


private ModelAndView endCtl(RequestBean reqBean) {
      ModelAndView mav = new ModelAndView();
      
      String json = gson.toJson(this.getEndList(reqBean));
      mav.addObject("endList",json);
      mav.setViewName("main");
      return mav;
   }
   private ArrayList<RequestBean> getEndList(RequestBean reqBean) {
	return mapper.getEndList(reqBean);
}


private ModelAndView ingCtl(RequestBean reqBean) {
      ModelAndView mav = new ModelAndView();
      String json = gson.toJson(this.getIngList(reqBean));
      mav.addObject("ingList",json);
      mav.setViewName("main");

      return mav;
   }

   private ArrayList<RequestBean> getIngList(RequestBean reqBean) {
	return mapper.getIngList(reqBean);
}


private ModelAndView waitingCtl(RequestBean reqBean) {
      ModelAndView mav = new ModelAndView();
      String json = gson.toJson(this.getWaitingList(reqBean));
      mav.addObject("waitingList",json);
      mav.setViewName("main");
      return mav;
   }



   private ArrayList<RequestBean> getWaitingList(RequestBean reqBean) {	
	return mapper.getWaitingList(reqBean);
}


private ModelAndView detailCtl(RequestBean reqBean) {
      ModelAndView mav = new ModelAndView();
      String json = gson.toJson(this.getDetail(reqBean));
      mav.addObject("detail",json);
      mav.setViewName("main");
      return mav;
   }

   private ArrayList<RequestBean> getDetail(RequestBean reqBean) {
	return mapper.getDetail(reqBean);
}


private ModelAndView myDealCtl(RequestBean reqBean) {
      ModelAndView mav = new ModelAndView();

      String json = gson.toJson(this.getMyDealList(reqBean));
      mav.addObject("myDealList",json);
      mav.setViewName("main");
      return mav;
   }

   private ArrayList<RequestBean> getMyDealList(RequestBean reqBean) {
	 return mapper.getMyDealList(reqBean);
    }

}