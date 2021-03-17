package spring.bao.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import spring.bao.beans.BidBean;
import spring.bao.beans.MemberBean;
import spring.bao.beans.MessageBean;


public interface BidIf {
	
	
		public ArrayList<BidBean> bidList(BidBean bidbean);
		
		public ArrayList<BidBean> getReq(BidBean bidbean);

		public ArrayList<MemberBean> getReq2(MemberBean memberbean);
		
		public ArrayList<BidBean> rejectMInfo(BidBean bidbean);
		
		public ArrayList<BidBean> rejectMInfoStM(BidBean bidbean);

		public ArrayList<BidBean> rejectMInfoMsg(BidBean bidbean);
		
		public ArrayList<BidBean> reqMmid(BidBean bidbean);
		
		public int insBi(BidBean bidbean);
		
		public int insBidInfo(BidBean bidbean);

		public int updateAcceptStatus(BidBean bidbean);

		public int updateRejectStatus(BidBean bidbean);
		
		public int updateEveryRejectStatus(BidBean bidbean);
		
		public int insAcceptMsg(MessageBean message);

		public int insRejectMsg(MessageBean message);

		public ArrayList<BidBean> rejectEveryMInfoMsg(BidBean bidbean);

		


		


		
		
}
