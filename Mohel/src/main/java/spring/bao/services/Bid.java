package spring.bao.services;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import spring.bao.beans.BidBean;
import spring.bao.beans.MemberBean;
import spring.bao.beans.RequestBean;
import spring.bao.mapper.BidIf;

@Service
public class Bid {
   
   public Bid() {}
   @Autowired
   private HttpServletRequest request;
   @Autowired
      private Gson gson;
      @Autowired
      private PlatformTransactionManager tran;
      @Autowired
      private BidIf BidIf;
      @Autowired
      HttpServletResponse response;
   public ModelAndView entrance(MemberBean member,RequestBean requestBean) throws IOException {
      ModelAndView mav = new ModelAndView();
      switch(requestBean.getSCode()) {
      case "PriceDetail":
         this.priceDetailCtl();
         break;
      case "RegisterBid":
         this.registerBidCtl(requestBean, member);
         break;
      case "Accept":
         this.acceptCtl();
         break;
      case "Reject":
         this.rejectCtl();
         break;
      }
      return mav;
   }
   
   private ModelAndView rejectCtl() {
      ModelAndView mav = new ModelAndView();
//      this.updateStatus();
//      this.insSendBox();
//      this.insHelperRecBox();
      return mav;
   }
   
   private ModelAndView acceptCtl() {
      ModelAndView mav = new ModelAndView();
//      this.insBidInfo();
//      this.updateStatus();
//      this.insSendBox();
//      this.insHelperRecBox();
      return mav;
   }
   
   private ModelAndView registerBidCtl(RequestBean requestBean, MemberBean member) throws IOException {
      ModelAndView mav = new ModelAndView();
      TransactionStatus status = tran.getTransaction(new DefaultTransactionDefinition());
         
         
         
         System.out.println(requestBean.getBiRqCode());
         
         
         
            
            System.out.println("insBi매퍼 성공");
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();         
            out.println("<script>alert('입찰이 등록되었습니다'); </script>");
            out.flush();
            this.insBi(requestBean);
            mav.setViewName("Deal/Register-after-view");
            tran.commit(status);
            

         return mav;
         
      }

   
   private ModelAndView priceDetailCtl() {
      ModelAndView mav = new ModelAndView();

      mav.setViewName("Deal/beforeDeal-helper2");
      return mav;
   }
    private boolean ConvertToBoolean(int data) {
         return data==1?true :false;
      }
   private boolean insBi(RequestBean request) {
         
         return ConvertToBoolean(BidIf.insBi(request));
         
      }

}
