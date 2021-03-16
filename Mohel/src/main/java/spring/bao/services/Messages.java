package spring.bao.services;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.MessageBean;
import spring.bao.mapper.MessageIf;

@Service
public class Messages {

		public Messages() {}
		@Autowired
		private HttpServletRequest request;
		@Autowired
		private MessageIf mapper;
		@Autowired
		private Gson gson;
		@Autowired
		private PlatformTransactionManager tran;
		

		public ModelAndView entrance(MessageBean messagBean) {
			
			ModelAndView mav = null;
			
			switch(request.getRequestURI().substring(1)) {
			
			case "RecBox":
				mav=this.recBoxCtl(messagBean);
				break;
			case "Title":
				mav=this.tiltleCtl(messagBean);
				break;
			case "SendBox":
				mav=this.sendBoxCtl(messagBean);
				break;
			case "MsgReplyForm":
				mav=this.msgReplyFormCtl(messagBean);
				break;
			case "MsgForm":
				mav=this.msgFormCtl(messagBean);
				break;
			case "SendMsg":
				mav=this.sendMsgCtl(messagBean);
				break;
			}
		
			return mav;
		
		}
		
		private ModelAndView sendMsgCtl(MessageBean messageBean) {
			TransactionStatus status=tran.getTransaction(new DefaultTransactionDefinition());
			
			ModelAndView mav = new ModelAndView();
			
			messageBean.setMsStatus("N");
			messageBean.setMsDate(this.getCurrentDate('d'));
			try {
				if(this.insMessage(messageBean)) {
					tran.commit(status);
					String json =gson.toJson(this.getSendList(messageBean));
				
					mav.addObject("SendList",json);
					
				};
			}catch(Exception e) {
				tran.rollback(status);
			}
			mav.setViewName("Message/sendBox");
			return mav;
		}
		private ModelAndView msgFormCtl(MessageBean messageBean) {
			ModelAndView mav = new ModelAndView();

			mav.setViewName("Message/sendMsg");
			
			return mav;

		}
		
		private ModelAndView msgReplyFormCtl(MessageBean messageBean) {
			ModelAndView mav = new ModelAndView();

			String json =gson.toJson(this.getMsgDetail(messageBean));
		    mav.addObject("dataList",json);
			mav.setViewName("Message/sendMsg");
			
			return mav;

		}
		
		
		private ModelAndView sendBoxCtl(MessageBean messageBean) {
			
			ModelAndView mav = new ModelAndView();
			String json =gson.toJson(this.getSendList(messageBean));
		    System.out.println(json);
		    mav.addObject("SendList",json);
			mav.setViewName("Message/sendBox");
			return mav;
		}

		private ModelAndView tiltleCtl(MessageBean messageBean) {
			TransactionStatus status=tran.getTransaction(new DefaultTransactionDefinition());

			ModelAndView mav = new ModelAndView();
			String json =gson.toJson(this.getMsgDetail(messageBean));
//		    System.out.println(json);
		    mav.addObject("dataList",json);
		  
		    try {
		    	if(this.updateStatus(messageBean)) {
		    		tran.commit(status);
		    	}
		    }catch(Exception e) {
		    	e.printStackTrace();
		    		tran.rollback(status);
		    }
			mav.setViewName("Message/msgDetail");
			return mav;
		}
	

		private ModelAndView recBoxCtl(MessageBean messageBean) {

			ModelAndView mav = new ModelAndView();
		    String json =gson.toJson(this.getRecList(messageBean));
//		    System.out.println(json);
		    mav.addObject("recList",json);
			mav.setViewName("Message/recBox");
			
			return mav;
		}
		
		private boolean convertToBoolean(int data) {
			return data == 1?true:false;
		}
		
		private boolean updateStatus(MessageBean messageBean) {
			return convertToBoolean(mapper.updateStatus(messageBean));
		}
		
		private boolean insMessage(MessageBean messageBean) {
			return convertToBoolean(mapper.insMessage(messageBean));
		}
		
		private ArrayList<Messages> getMsgDetail(MessageBean messageBean){
			return mapper.getMsgDetail(messageBean);
		}
		
		private ArrayList<Messages> getSendList(MessageBean messageBean){
			return mapper.getSendList(messageBean);
		}
		
		private ArrayList<Messages> getRecList(MessageBean messageBean){
			return mapper.getRecList(messageBean);
		}
		
		 /*current date type */
		   private String getCurrentDate(char dateType) {
			   Date date = new Date();
			   
			   SimpleDateFormat sdf = (dateType == 'f')? new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E요일"):
				   (dateType == 'd')? new SimpleDateFormat("yyyy-MM-dd HH24:mm:ss"):null;
				 return sdf.format(date);
		   }
}