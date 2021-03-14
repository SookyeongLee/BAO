package spring.bao.services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.MessageBean;
import spring.bao.beans.ScheduleBean;
import spring.bao.mapper.ScheduleIf;

@Service
public class Schedule {

	public Schedule() {
	}

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

	public ModelAndView entrance(ScheduleBean scheduleBean, MessageBean messageBean) throws IOException {

		ModelAndView mav = null;

		switch (request.getRequestURI().substring(1)) {
		case "MovePro":
			mav = this.moveProCtl(scheduleBean);
			break;
		case "InsSchedule":
			mav = this.insScheduleCtl(scheduleBean);
			break;
		case "UpdateSchedule":
			this.updateScheduleCtl();
			break;
		case "MoveUser":
			mav = this.moveUserCtl(scheduleBean);
			break;
		case "AcceptSchedule":
			mav = this.acceptCtl(scheduleBean, messageBean);
			break;
		case "RejectSchedule":
			mav=this.rejectCtl(messageBean);
			break;
		case "OkClick":
			mav=this.okCtl(scheduleBean);
			break;
		}
		return mav;
	}

	private ModelAndView okCtl(ScheduleBean scheduleBean) {
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());

		ModelAndView mav = new ModelAndView();
		try {
		if(this.updateStatus(scheduleBean)) {
			tran.commit(status);
		}
		}catch(Exception e) {
			tran.rollback(status);
			e.printStackTrace();
		}
		return mav;
	}

	private ModelAndView rejectCtl(MessageBean messageBean){
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());

		ModelAndView mav = new ModelAndView();
		messageBean.setMsRecipient("JUN");
		messageBean.setMsSender("모두의 헬퍼");

		try {
			if (this.insRejectMessage(messageBean)) {
				tran.commit(status);
			}
		} catch (Exception e) {
			tran.rollback(status);
			e.printStackTrace();
		}
		return mav;
	}

	private ModelAndView acceptCtl(ScheduleBean scheduleBean, MessageBean messageBean) {
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());

		ModelAndView mav = new ModelAndView();
		scheduleBean.setScCode("6000210305090301");
		messageBean.setMsRecipient("JUN");
		messageBean.setMsSender("모두의 헬퍼");
		try {
			if (this.insFixSchedule(scheduleBean)) {
				if (this.insMessage(messageBean)) {
					tran.commit(status);
				}
			}
		} catch (Exception e) {
			tran.rollback(status);
			e.printStackTrace();

		}

		return mav;
	}

	private ModelAndView moveUserCtl(ScheduleBean scheduleBean) throws IOException {
		String scInfo = gson.toJson(this.getSchedule(scheduleBean));

		System.out.println(scInfo.length());
		ModelAndView mav = new ModelAndView();

		if (!scInfo.equals("[]")) {
			mav.addObject("scInfo", scInfo);
			mav.setViewName("Schedule/conditionUser");
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('nothing');location.href='Main'; </script>");
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
		TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());

		ModelAndView mav = new ModelAndView();

		try {
			if (this.insSchedule(scheduleBean)) {
				System.out.println("Insert Complete");
				System.out.println(scheduleBean.getScCode());
				System.out.println(scheduleBean.getScHelper());
				System.out.println(scheduleBean.getScStatus());
				tran.commit(status);
				mav.setViewName("Authentication/main");
			}
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
			System.out.println(e);
		}

		return mav;
	}

	private ModelAndView moveProCtl(ScheduleBean scheduleBean) {
		String scInfo = gson.toJson(this.getSchedule(scheduleBean));
		String bidInfo = gson.toJson(this.getBidInfo(scheduleBean));

		ModelAndView mav = new ModelAndView();

		if (!scInfo.equals("[]")) {
			mav.addObject("scInfo", scInfo);
		} else {
			mav.addObject("scInfo", bidInfo);
		}
		mav.setViewName("Schedule/conditionPro");

		return mav;
	}

	private boolean convertToBoolean(int data) {
		return data == 1 ? true : false;
	}
	private boolean updateStatus(ScheduleBean scheduleBean) {
		return convertToBoolean(mapper.updateStatus(scheduleBean));
	}
	private boolean insRejectMessage(MessageBean messageBean) {
		return convertToBoolean(mapper.insRejectMessage(messageBean));
	}
	private boolean insMessage(MessageBean messageBean) {
		return convertToBoolean(mapper.insMessage(messageBean));
	}

	private boolean insFixSchedule(ScheduleBean scheduleBean) {
		return convertToBoolean(mapper.insFixSchedule(scheduleBean));
	}

	private boolean insSchedule(ScheduleBean scheduleBean) {
		return convertToBoolean(mapper.insSchedule(scheduleBean));
	}

	private ArrayList<Schedule> getBidInfo(ScheduleBean scheduleBean) {
		return mapper.getBidInfo(scheduleBean);
	}

	private ArrayList<Schedule> getSchedule(ScheduleBean scheduleBean) {
		return mapper.getSchedule(scheduleBean);
	}

}
