package spring.bao.mapper;


import java.util.ArrayList;

import spring.bao.beans.MemberBean;
import spring.bao.beans.RequestBean;

public interface AuthenticationIf {

	public int isMember(MemberBean memberbean);
	public int insMember(MemberBean memberbean);	
	public int isAccess(MemberBean memberbean);
	public ArrayList<RequestBean> getRecentList(RequestBean req);
	public ArrayList<RequestBean> getRecentList2(RequestBean req);
	public int insAccess(MemberBean member);


	

}
