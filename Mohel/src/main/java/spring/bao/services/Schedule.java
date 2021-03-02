package spring.bao.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class Schedule {
	
	public Schedule() {}
	@Autowired
	private HttpServletRequest request;
	
	public ModelAndView entrance() {
		switch(request.getRequestURI().substring(1)) {
		case "MovePro":
			this.moveProCtl();
			break;
		case "InsSchedule":
			this.insScheduleCtl();
			break;
		case "UpdateSchedule":
			this.updateScheduleCtl();
			break;
		case "MoveUser":
			this.moveUserCtl();
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
		return null;
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
	
	private ModelAndView moveUserCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getSchedule();
		return mav;		
	}
	
	private ModelAndView updateScheduleCtl() {
		ModelAndView mav = new ModelAndView();
		
		return mav;		
	}
	
	private ModelAndView insScheduleCtl() {
		ModelAndView mav = new ModelAndView();
//		this.insSchedule();
		return mav;		
	}

	private ModelAndView moveProCtl() {
		ModelAndView mav = new ModelAndView();
//		this.getSchedule();
		return mav;
	}
	
}