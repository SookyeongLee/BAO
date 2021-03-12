package spring.bao.beans;

import lombok.Data;

@Data
public class BidBean {
	
	private String biRqCode;
	private String biMmHelper;
	private int biPrice;
	private String biSysdate;
	private String biComment;
	private String winHelper;
	private int winPrice;
	private String bidScode;
	private String alStCode;
	
	
	//추가
	private String rqCode;
	private String rqId;
	private String mId;
	private String alMmid;
	private String biMmHelperView;
}
