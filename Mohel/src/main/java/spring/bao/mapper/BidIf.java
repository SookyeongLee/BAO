package spring.bao.mapper;

import java.util.ArrayList;

import spring.bao.beans.BidBean;
import spring.bao.beans.RequestBean;

public interface BidIf {
	
	
	
	public ArrayList<BidBean> getReqDetail(BidBean bidbean);
	
		public int insBi(BidBean bidbean);
		
		public ArrayList<BidBean> getReq(BidBean bidbean);
}
