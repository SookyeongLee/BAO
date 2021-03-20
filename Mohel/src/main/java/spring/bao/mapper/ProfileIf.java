package spring.bao.mapper;

import java.util.ArrayList;

import spring.bao.beans.MemberBean;

public interface ProfileIf {

	public int updateProfile(MemberBean memberbean);

	public ArrayList<MemberBean> getProfile(MemberBean memberbean);
	
	public ArrayList<MemberBean> getRgProfile(MemberBean memberbean);
	
	public ArrayList<MemberBean> getClickProfile(MemberBean memberbean);

	public int isRcCodeCheck(MemberBean memberbean);
	
	public int insRg(MemberBean memberbean);

	public int updateRg(MemberBean memberbean);


}
