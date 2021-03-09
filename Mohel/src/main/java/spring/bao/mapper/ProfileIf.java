package spring.bao.mapper;

import java.util.ArrayList;

import spring.bao.beans.MemberBean;

public interface ProfileIf {

	public int updateProfile(MemberBean memberbean);

	public ArrayList<MemberBean> getProfile(MemberBean memberbean);

	public int isRgNameCheck(MemberBean memberbean);



}
