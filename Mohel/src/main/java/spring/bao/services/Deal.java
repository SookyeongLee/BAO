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
	private Gson gson;

	public ModelAndView entrance(RequestBean reqBean) {
		ModelAndView mav = new ModelAndView();

		switch (reqBean.getACode()) {

		case "Detail":
			mav = this.detailCtl(reqBean);
			break;
		case "WaitingHelper":
			mav = this.waitingHelperCtl(reqBean);
			break;
		case "WaitingWisher":
			mav = this.waitingWisherCtl(reqBean);
			break;
		case "IngHelper":
			mav = this.ingHelperCtl(reqBean);
			break;
		case "IngWisher":
			mav = this.ingWisherCtl(reqBean);
			break;
		case "EndHelper":
			mav = this.endHelperCtl(reqBean);
			break;
		case "EndWisher": 
			mav = this.endWisherCtl(reqBean);
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
		String json2 = gson.toJson(this.getBestFilterList(reqBean));
		mav.addObject("requestData", json);
		mav.addObject("requestBestData", json2);
		mav.setViewName("main");
		return mav;
	}

	private ArrayList<RequestBean> getBestFilterList(RequestBean reqBean) {
		return mapper.BestFilterList(reqBean);
	}

	private ArrayList<RequestBean> getFilterList(RequestBean reqBean) {
		return mapper.filterList(reqBean);
	}

	private ModelAndView searchCtl(RequestBean reqBean) {
		ModelAndView mav = new ModelAndView();

		if (reqBean.getRqWord().equals("")) {
			String json = gson.toJson(this.getAllSearchList(reqBean));
			String json2 = gson.toJson(this.getBestAllSearchList(reqBean));
			mav.addObject("searchData", json);
			mav.addObject("searchBestData", json2);
			mav.setViewName("main");
		} else {
			String json = gson.toJson(this.getSearchList(reqBean));
			String json2 = gson.toJson(this.getBestSearchList(reqBean));
			mav.addObject("searchData", json);
			mav.addObject("searchBestData", json2);
			mav.setViewName("main");
		}
		return mav;
	}

	private ArrayList<RequestBean> getBestSearchList(RequestBean reqBean) {
		return mapper.BestSearchList(reqBean);
	}

	private ArrayList<RequestBean> getBestAllSearchList(RequestBean reqBean) {
		return mapper.BestallSearchList(reqBean);
	}

	private ArrayList<RequestBean> getAllSearchList(RequestBean reqBean) {
		return mapper.allSearchList(reqBean);
	}

	private ArrayList<RequestBean> getSearchList(RequestBean reqBean) {

		return mapper.searchList(reqBean);
	}

	private ModelAndView endHelperCtl(RequestBean reqBean) {
		ModelAndView mav = new ModelAndView();

		reqBean.setWinHelper("JUN");
		String json = gson.toJson(this.getEndHelperList(reqBean));
		mav.addObject("endHelperList", json);
		mav.setViewName("Deal/endDate-helper");
		return mav;
	}

	private ArrayList<RequestBean> getEndHelperList(RequestBean reqBean) {
		return mapper.getEndHelperList(reqBean);
	}

	private ModelAndView endWisherCtl(RequestBean reqBean) {
		ModelAndView mav = new ModelAndView();
		reqBean.setRqId("JUN");

		String json = gson.toJson(this.getEndWisherList(reqBean));
		mav.addObject("endWisherList", json);
		mav.setViewName("Deal/endDate-wisher");
		return mav;
	}

	private ArrayList<RequestBean> getEndWisherList(RequestBean reqBean) {
		return mapper.getEndWisherList(reqBean);
	}

	private ModelAndView ingHelperCtl(RequestBean reqBean) {
		ModelAndView mav = new ModelAndView();
		reqBean.setWinHelper("JUN");
		String json = gson.toJson(this.getIngHelperList(reqBean));
		mav.addObject("ingHelperList", json);
		mav.setViewName("Deal/ing-helper");

		return mav;
	}

	private ModelAndView ingWisherCtl(RequestBean reqBean) {
		ModelAndView mav = new ModelAndView();
		reqBean.setRqId("JUN");
		String json = gson.toJson(this.getIngWisherList(reqBean));
		mav.addObject("ingWisherList", json);
		mav.setViewName("Deal/ing-wisher");

		return mav;
	}

	private ArrayList<RequestBean> getIngWisherList(RequestBean reqBean) {
		return mapper.getIngWisherList(reqBean);
	}

	private ArrayList<RequestBean> getIngHelperList(RequestBean reqBean) {
		return mapper.getIngHelperList(reqBean);
	}

	private ModelAndView waitingHelperCtl(RequestBean reqBean) {
		ModelAndView mav = new ModelAndView();
		reqBean.setBiHelper("JUN");
		String json = gson.toJson(this.getWhelperList(reqBean));
		mav.addObject("wHelperList", json);
		mav.setViewName("Deal/waiting-helper");
		return mav;
	}

	private ModelAndView waitingWisherCtl(RequestBean reqBean) {
		ModelAndView mav = new ModelAndView();
		reqBean.setRqId("JUN");
		String json = gson.toJson(this.getWwisherList(reqBean));
		mav.addObject("wWisherList", json);
		mav.setViewName("Deal/waiting-wisher");
		return mav;
	}

	private ArrayList<RequestBean> getWhelperList(RequestBean reqBean) {
		return mapper.getWhelperList(reqBean);
	}

	private ArrayList<RequestBean> getWwisherList(RequestBean reqBean) {
		return mapper.getWwisherList(reqBean);
	}

	private ModelAndView detailCtl(RequestBean reqBean) {
		ModelAndView mav = new ModelAndView();
		
		if(reqBean.getRqDetailSelect().equals("bh")) {
			//reqBean.setRqCode("1000210305090308");
			String json = gson.toJson(this.getDetail(reqBean));
			mav.addObject("detail", json);
			mav.setViewName("Deal/beforeDeal-helper");
		}else if(reqBean.getRqDetailSelect().equals("bw")){
			//reqBean.setRqCode("1000210305090308");
			String json = gson.toJson(this.getDetail(reqBean));
			mav.addObject("detail", json);
			mav.setViewName("Deal/beforeDeal-wisher");
		}else if(reqBean.getRqDetailSelect().equals("ad")){
			String json = gson.toJson(this.getDetailAD(reqBean));
			mav.addObject("detailAd", json);
			mav.setViewName("Deal/afterDeal");
		}	
		return mav;
	}

	private  ArrayList<RequestBean> getDetailAD(RequestBean reqBean) {
		return mapper.getDetailAD(reqBean);
	}

	private ArrayList<RequestBean> getDetail(RequestBean reqBean) {
		return mapper.getDetail(reqBean);
	}

}