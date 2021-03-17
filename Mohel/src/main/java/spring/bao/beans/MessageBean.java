package spring.bao.beans;

import lombok.Data;

@Data
public class MessageBean {
	private String msCode;
	private String msRecipient;
	private String msSender;
	private String msTitle;
	private String msComment;
	private String msDate;
	private String msStatus;
	
	private String wiHelper;
	private String biMmHelper;
	private String rqId; 
	
}
