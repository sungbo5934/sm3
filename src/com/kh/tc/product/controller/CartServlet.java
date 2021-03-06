package com.kh.tc.product.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.tc.product.model.service.CartService;
import com.kh.tc.product.model.vo.product;
 
 
@WebServlet("/wishbuy.do")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CartServlet() {
    	
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		int num= Integer.parseInt(request.getParameter("num"));
		
		 product cart= new CartService().wishbuy(num);
	
		 String page="";
			System.out.println(cart);
		 if(cart!=null){
			 page = "views/mypage/wishbuy.jsp";
			 request.setAttribute("cart", cart);
			 
		 }else{
			 page="views/common/errorPage.jsp";
			 request.setAttribute("msg", "fail");
		 }
		
		
		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
