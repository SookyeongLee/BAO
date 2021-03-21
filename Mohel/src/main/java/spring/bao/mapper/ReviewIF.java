package spring.bao.mapper;

import java.util.ArrayList;

import spring.bao.beans.BidBean;
import spring.bao.beans.MemberBean;
import spring.bao.beans.ReviewBean;



public interface ReviewIF {

	public ArrayList<ReviewBean> getReview(ReviewBean rev);
	public ArrayList<BidBean> getCH(BidBean bid);
	public int insReview(ReviewBean rev);
	public int isReview(ReviewBean rev);
	
}