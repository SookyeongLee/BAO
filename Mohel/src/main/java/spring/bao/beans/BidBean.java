package spring.bao.beans;

import lombok.Data;

@Data
public class BidBean {
	
	private String biRqCode;
	private String biMmHelper;
	private int biPrice;
	private String biSysdate;
	private String biComment;
	private String wiHelper;
	private String bidScode;
	private String alStCode;
	private String wiPrice;
	
	
	//REQUEST
	private String rqCode;
	private String rqId;
	private String mId;
	private String alMmid;
	private String biMmHelperView;
	private String wiRqCode;
	private String rqStcode;
	private String choice;
	private String prWiHelper;
	private String biStCode;
	
}
