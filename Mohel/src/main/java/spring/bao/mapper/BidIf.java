package spring.bao.mapper;

import java.util.ArrayList;

import spring.bao.beans.BidBean;

public interface BidIf {
	
	public ArrayList<BidBean> getPriceDetail(BidBean bidbean);
}
