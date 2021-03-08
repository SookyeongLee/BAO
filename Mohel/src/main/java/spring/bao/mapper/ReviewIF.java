package spring.bao.mapper;

import java.util.ArrayList;

import spring.bao.beans.ReviewBean;



public interface ReviewIF {

	public ArrayList<ReviewBean> getReview(ReviewBean rev);
	public int isReview(ReviewBean rev);
}