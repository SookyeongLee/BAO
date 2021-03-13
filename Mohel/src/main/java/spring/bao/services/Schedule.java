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

import com.google.gson.Gson;

import spring.bao.beans.ScheduleBean;
import spring.bao.mapper.ScheduleIf;

@Service
public class Schedule {
	
	public Schedule() {}
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private HttpServletResponse response;
	@Autowired
	private ScheduleIf mapper;
	@Autowired
	private Gson gson;
	@Autowired
	private PlatformTransactionManager tran;
	
	public ModelAndView entrance(ScheduleBean scheduleBean) throws Exception {
		
		ModelAndView mav = null;
		
		switch(request.getRequestURI().substring(1)) {
		case "MovePro":
			mav=this.moveProCtl(scheduleBean);
			break;
		case "InsSchedule":
			mav=this.insScheduleCtl(scheduleBean);
			break;
		case "UpdateSchedule":
			this.updateScheduleCtl();
			break;
		case "MoveUser":
			mav=this.moveUserCtl(scheduleBean);
			break;
		case "AcceptSchedule":
			this.acceptCtl();
			break;
		case "RejectSchedule":
			this.rejectCtl();
			break;
		case "OkClick":
			this.okCtl();
			break;
		}
		return mav;
	}
	private ModelAndView okCtl() {
		ModelAndView mav = new ModelAndView();
//		this.updateStatus();
//		this.insSendBox();
//		this.insHelperRecBox();
		return mav;		
	}
	private ModelAndView rejectCtl() {
		ModelAndView mav = new ModelAndView();
//		this.insSendBox();
//		this.insHelperRecBox();
		return mav;		
	}
	
	private ModelAndView acceptCtl() {
		ModelAndView mav = new ModelAndView();
//		this.insFixSchedule();
//		this.insSendBox();
//		this.insHelperRecBox();
		return mav;		
	}
	
	private ModelAndView moveUserCtl(ScheduleBean scheduleBean) throws Exception {
		String scInfo =gson.toJson(this.getSchedule(scheduleBean));

		System.out.println(scInfo.length());
		ModelAndView mav = new ModelAndView();
		System.out.println("소정 마스터 ㄱ ㄱ ");
		
		if(!scInfo.equals("[]")) {
			mav.addObject("scInfo", scInfo);
			mav.setViewName("Schedule/conditionUser");
		}else{
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('nothing');location.href='Main' </script>"); 
			out.flush();
			out.close();
		}

		return mav;
	}
	
	private ModelAndView updateScheduleCtl() {
		ModelAndView mav = new ModelAndView();
//		this.updateSchedule();
		return mav;		
	}
	
	
	
	private ModelAndView insScheduleCtl(ScheduleBean scheduleBean) {
		TransactionStatus status=tran.getTransaction(new DefaultTransactionDefinition());

		ModelAndView mav = new ModelAndView();
//		if(this.insSchedule(scheduleBean)) {
//			if(this.insDetailSchedule(scheduleBean)) {
//				tran.commit(status);
//				//메세지 전송하기 //스케쥴 입력했다고 메세지 보내주기 
//			}
//		}
//		String jsonInfo = request.getParameter("data");
//		System.out.println("???"+jsonInfo);
//		try {
//		JSONParser jsonParser = new JSONParser();
//		JSONObject jsonObject = (JSONObject)jsonParser.parse(jsonInfo);
//		System.out.println(jsonObject.get(0));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		mav.setViewName("Schedule/conditionPro");
		return mav;		
	}

	private ModelAndView moveProCtl(ScheduleBean scheduleBean) {
		String scInfo =gson.toJson(this.getSchedule(scheduleBean));
		String bidInfo =gson.toJson(this.getBidInfo(scheduleBean));

		ModelAndView mav = new ModelAndView();
		
		if(!scInfo.equals("[]")) {
			mav.addObject("scInfo", scInfo);
		}else{
			mav.addObject("scInfo", bidInfo);
		}
		mav.setViewName("Schedule/conditionPro");

		return mav;
	}
	
	private boolean convertToBoolean(int data) {
		return data == 1?true:false;
	}
	
	private boolean insDetailSchedule(ScheduleBean scheduleBean) {
		return convertToBoolean(mapper.insDetailSchedule(scheduleBean));
	}
	
	private boolean insSchedule(ScheduleBean scheduleBean) {
		return convertToBoolean(mapper.insSchedule(scheduleBean));
	}
	
	private ArrayList<Schedule> getBidInfo(ScheduleBean scheduleBean){
		return mapper.getBidInfo(scheduleBean);
	}

	private ArrayList<Schedule> getSchedule(ScheduleBean scheduleBean){
		return mapper.getSchedule(scheduleBean);
	}
	
}
