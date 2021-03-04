package spring.bao.mapper;

import java.util.ArrayList;

import spring.bao.beans.RequestBean;

public interface DealIf {

	public ArrayList<RequestBean> filterList(RequestBean reqBean); //대분류 요청글 정보 겟

	public ArrayList<RequestBean> searchList(RequestBean reqBean); // 검색(검색어있음)

	public ArrayList<RequestBean> allSearchList(RequestBean reqBean); // 검색(검색에없음)

	public ArrayList<RequestBean> getMyDealList(RequestBean reqBean); // 내요청리스트 정보 겟 

	public ArrayList<RequestBean> getDetail(RequestBean reqBean);  // 요청글 상세정보 정보 겟 

	public ArrayList<RequestBean> getWaitingList(RequestBean reqBean); // 대기중리스트 정보 겟

	public ArrayList<RequestBean> getIngList(RequestBean reqBean); //거래진행중 정보 겟 

	public ArrayList<RequestBean> getEndList(RequestBean reqBean); // 거래완료 정보 겟 
}
