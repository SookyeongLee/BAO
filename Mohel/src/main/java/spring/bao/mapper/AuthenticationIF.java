package spring.bao.mapper;


import java.util.ArrayList;

import spring.bao.beans.MemberBean;

public interface AuthenticationIF {

	public int isMember(MemberBean memberbean);
	public int insMember(MemberBean memberbean);	
	public int isAccess(MemberBean memberbean);
	public ArrayList<MemberBean> getRecentList(MemberBean memberbean);
	public int insAccess(MemberBean member);


	

}
