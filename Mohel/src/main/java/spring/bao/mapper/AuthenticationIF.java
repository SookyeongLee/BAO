package spring.bao.mapper;


import java.util.ArrayList;

import com.google.gson.JsonElement;

import spring.bao.beans.MemberBean;
import spring.bao.beans.RequestBean;

public interface AuthenticationIF {

	public int isMember(MemberBean memberbean);
	public int insMember(MemberBean memberbean);	
	public int isAccess(MemberBean memberbean);
	public ArrayList<RequestBean> getRecentList(RequestBean req);
	public int insAccess(MemberBean member);
	


	

}
