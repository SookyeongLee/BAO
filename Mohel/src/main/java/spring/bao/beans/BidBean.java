package spring.bao.beans;

import lombok.Data;

@Data
public class BidBean {
	
	private String biRqCode;
	private String biMmHelper;
	private String biPrice;
	private String biSysdate;
	private String biComment;
	private String winHelper;
	private String winPrice;
	private String bidScode;
	
	//추가
	private String rqCode;
	private String rqId;
	
}
