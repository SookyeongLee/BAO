package spring.bao.mapper;

import spring.bao.beans.RequestBean;

public interface dealIf {
	public int isBidder(RequestBean request);
	public RequestBean getReqDetail(RequestBean request);
	public int insReqSend(RequestBean request);
	public int updateReqDetail(RequestBean request);
	public int deleteReqDetail(RequestBean request);
}
