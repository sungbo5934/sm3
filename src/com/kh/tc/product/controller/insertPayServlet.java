package com.kh.tc.product.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.kh.tc.product.model.service.productService;
import com.kh.tc.product.model.vo.Pay;

 
@WebServlet("/insertPay.do")
public class insertPayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public insertPayServlet() {
        super();
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 Pay pay = new Pay();
		 
		String ac_code = request.getParameter("acCode");
		String p_name = request.getParameter("pName");
		int pay_price = Integer.parseInt(request.getParameter("pPrice"));
		String howtopay = request.getParameter("howtopay");
		
	 System.out.println(ac_code);
	 System.out.println(p_name);
	 System.out.println(pay_price);
	 System.out.println(howtopay);
	  
	 
	 pay.setAc_code(ac_code);
	 pay.setP_name(p_name);
	 pay.setPay_price(pay_price);
	 pay.setHowtopay(howtopay);
	  
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); 
		 
		int result= new ProductService().insertPay(pay);
		
		 String page="";
			
		 System.out.println(result);
		 
		 if(result > 0){
			 request.setAttribute("result", result);
			 page="views/mypage/buy.jsp";
		 }else{
			 page="views/common/errorPage.jsp";
			 request.setAttribute("msg", "���� ��� ����");
		 }
		 RequestDispatcher view = request.getRequestDispatcher(page);
		 view.forward(request, response);
		
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
