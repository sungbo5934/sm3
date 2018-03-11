package com.kh.tc.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.tc.product.model.service.ProductService;
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
	  
		// arrayList에 결제 정보 담아 보냄
	 	ArrayList<Pay> list = new ProductService().insertPay(pay);
		
		 String page="";
			
		 System.out.println(list);
		 
		 response.setContentType("appliction/json");
		 new Gson().toJson(list, response.getWriter());
		
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
