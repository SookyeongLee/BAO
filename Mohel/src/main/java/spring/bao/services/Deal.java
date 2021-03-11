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

   public Deal() {
   }

   @Autowired
   private DealIf mapper;
   @Autowired
   private PlatformTransactionManager tran;
   @Autowired
   private HttpServletRequest request;
   @Autowired
   private Gson gson;

   public ModelAndView entrance(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();

      switch (request.getRequestURI().substring(1)) {

      case "Detail":
         mav = this.detailCtl(requestBean);
         break;
      case "WaitingHelper":
         mav = this.waitingHelperCtl(requestBean);
         break;
      case "WaitingWisher":
         mav = this.waitingWisherCtl(requestBean);
         break;
      case "IngHelper":
         mav = this.ingHelperCtl(requestBean);
         break;
      case "IngWisher":
         mav = this.ingWisherCtl(requestBean);
         break;
      case "EndHelper":
         mav = this.endHelperCtl(requestBean);
         break;
      case "EndWisher": 
         mav = this.endWisherCtl(requestBean);
         break;
      case "Search":
         mav = this.searchCtl(requestBean);
         break;
      case "Filter":
         mav = this.filterCtl(requestBean);
         break;
      }
      return mav;
   }

   private ModelAndView filterCtl(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();
      String json = gson.toJson(this.getFilterList(requestBean));
      String json2 = gson.toJson(this.getBestFilterList(requestBean));
      mav.addObject("requestData", json);
      mav.addObject("requestBestData", json2);
      mav.setViewName("Authentication/main");
      return mav;
   }

   private ArrayList<RequestBean> getBestFilterList(RequestBean requestBean) {
      return mapper.BestFilterList(requestBean);
   }

   private ArrayList<RequestBean> getFilterList(RequestBean requestBean) {
      return mapper.filterList(requestBean);
   }

   private ModelAndView searchCtl(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();

      if (requestBean.getRqWord().equals("")) {
         String json = gson.toJson(this.getAllSearchList(requestBean));
         String json2 = gson.toJson(this.getBestAllSearchList(requestBean));
         mav.addObject("searchData", json);
         mav.addObject("searchBestData", json2);
         mav.setViewName("Authentication/main");
      } else {
         String json = gson.toJson(this.getSearchList(requestBean));
         String json2 = gson.toJson(this.getBestSearchList(requestBean));
         mav.addObject("searchData", json);
         mav.addObject("searchBestData", json2);
         mav.setViewName("Authentication/main");
      }
      return mav;
   }

   private ArrayList<RequestBean> getBestSearchList(RequestBean requestBean) {
      return mapper.BestSearchList(requestBean);
   }

   private ArrayList<RequestBean> getBestAllSearchList(RequestBean requestBean) {
      return mapper.BestallSearchList(requestBean);
   }

   private ArrayList<RequestBean> getAllSearchList(RequestBean requestBean) {
      return mapper.allSearchList(requestBean);
   }

   private ArrayList<RequestBean> getSearchList(RequestBean requestBean) {

      return mapper.searchList(requestBean);
   }

   private ModelAndView endHelperCtl(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();

//      reqBean.setWinHelper("JUN");
      String json = gson.toJson(this.getEndHelperList(requestBean));
      mav.addObject("endHelperList", json);
      mav.setViewName("Deal/endDate-helper");
      return mav;
   }

   private ArrayList<RequestBean> getEndHelperList(RequestBean requestBean) {
      return mapper.getEndHelperList(requestBean);
   }

   private ModelAndView endWisherCtl(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();
      requestBean.setRqId("JUN");

      String json = gson.toJson(this.getEndWisherList(requestBean));
      mav.addObject("endWisherList", json);
      mav.setViewName("Deal/endDate-wisher");
      return mav;
   }

   private ArrayList<RequestBean> getEndWisherList(RequestBean requestBean) {
      return mapper.getEndWisherList(requestBean);
   }

   private ModelAndView ingHelperCtl(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();
//      reqBean.setWinHelper("JUN");
      String json = gson.toJson(this.getIngHelperList(requestBean));
      mav.addObject("ingHelperList", json);
      mav.setViewName("Deal/ing-helper");

      return mav;
   }

   private ModelAndView ingWisherCtl(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();
      requestBean.setRqId("JUN");
      String json = gson.toJson(this.getIngWisherList(requestBean));
      mav.addObject("ingWisherList", json);
      mav.setViewName("Deal/ing-wisher");

      return mav;
   }

   private ArrayList<RequestBean> getIngWisherList(RequestBean requestBean) {
      return mapper.getIngWisherList(requestBean);
   }

   private ArrayList<RequestBean> getIngHelperList(RequestBean requestBean) {
      return mapper.getIngHelperList(requestBean);
   }

   private ModelAndView waitingHelperCtl(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();
//      reqBean.setBiHelper("JUN");
      String json = gson.toJson(this.getWhelperList(requestBean));
      mav.addObject("wHelperList", json);
      mav.setViewName("Deal/waiting-helper");
      return mav;
   }

   private ModelAndView waitingWisherCtl(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();
      requestBean.setRqId("JUN");
      String json = gson.toJson(this.getWwisherList(requestBean));
      mav.addObject("wWisherList", json);
      mav.setViewName("Deal/waiting-wisher");
      return mav;
   }

   private ArrayList<RequestBean> getWhelperList(RequestBean requestBean) {
      return mapper.getWhelperList(requestBean);
   }

   private ArrayList<RequestBean> getWwisherList(RequestBean requestBean) {
      return mapper.getWwisherList(requestBean);
   }

   private ModelAndView detailCtl(RequestBean requestBean) {
      ModelAndView mav = new ModelAndView();
//      String json = gson.toJson(this.getDetail(reqBean));
//      mav.addObject("detail", json);
      mav.setViewName("Deal/beforeDeal-helper");
      return mav;
   }

   private ArrayList<RequestBean> getDetail(RequestBean requestBean) {
      return mapper.getDetail(requestBean);
   }

}