package spring.bao.beans;

import lombok.Data;

@Data
public class RequestBean {
   private String sCode;
   private String rqCode;
   private String rqId;
   private String rcName;
   private String rqTitle;
   private String rqComment;
   private String rqFilterCode;
   private String rqFilterName;
   private String rqImage;
   private String rqSubCode;
   private String rqSubName;
   private String rqPeriod;
   private String rqDate;
   private String rqStatus;
   private String rqRcCode;   
   private String rqWord;
   private String img;
   private int rqBest;
   private String RqDetailSelect;
   
   //현옥  
      private String rqDeadLine;
      private String rdCode;
      private String rdComment;
      
      //+Bid빈 
      private String biCode;
      private String biHelper;
      private String biPrice;
      private String biDate;
      private String biComment;
      private String winHelper;
      private String winPrice;
      private String bidScode;

}