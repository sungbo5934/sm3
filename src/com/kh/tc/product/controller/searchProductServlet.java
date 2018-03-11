package com.kh.tc.product.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.tc.product.model.service.CartService;
import com.kh.tc.product.model.service.ProductService;
import com.kh.tc.product.model.vo.product;
 
@WebServlet("/searchProduct.do")
public class searchProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public searchProductServlet() {
        super();
 
        
    }

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); 
		 
		int num= Integer.parseInt(request.getParameter("num"));
		
		System.out.println(num);
		 
		
		product product= new ProductService().selectOne(num);		 
		 String page="";
			
		 if(product!=null){
			 page = "views/mypage/payment1.jsp";
			 request.setAttribute("product", product);
			 
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
