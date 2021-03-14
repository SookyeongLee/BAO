package spring.bao.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import spring.bao.beans.MessageBean;
import spring.bao.beans.ScheduleBean;
import spring.bao.services.Schedule;

public interface ScheduleIf {
	public ArrayList<Schedule> getSchedule(ScheduleBean scheduleBean);
	public ArrayList<Schedule> getBidInfo(ScheduleBean scheduleBean);
	public int insSchedule(ScheduleBean scheduleBean);
	public int insFixSchedule(ScheduleBean scheduleBean);
	public int insMessage(MessageBean messagBean);
	public int insRejectMessage(MessageBean messagBean);
	public int updateStatus(ScheduleBean scheduleBean);
	public int insDetailSchedule(List<HashMap<String, Object>> jsondata);

}