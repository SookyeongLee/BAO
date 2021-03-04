package spring.bao.mapper;

import java.util.ArrayList;

import spring.bao.beans.RequestBean;

public interface DealIf {

	public ArrayList<RequestBean> filterList(RequestBean reqBean);

	public ArrayList<RequestBean> searchList(RequestBean reqBean);

	public ArrayList<RequestBean> allSearchList(RequestBean reqBean);

	public ArrayList<RequestBean> getMyDealList(RequestBean reqBean);

	public ArrayList<RequestBean> getDetail(RequestBean reqBean);

	public ArrayList<RequestBean> getWaitingList(RequestBean reqBean);

	public ArrayList<RequestBean> getIngList(RequestBean reqBean);

	public ArrayList<RequestBean> getEndList(RequestBean reqBean);
}
