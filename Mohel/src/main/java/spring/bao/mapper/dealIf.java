package spring.bao.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import spring.bao.beans.RequestBean;

public interface dealIf {
	public int isBidder(RequestBean request);
	public ArrayList<RequestBean> getReqDetail(RequestBean request);
	public int insReqSend(RequestBean request);
	public int updateReqDetail(RequestBean request);
	public int deleteReqDetail(RequestBean request);
}
