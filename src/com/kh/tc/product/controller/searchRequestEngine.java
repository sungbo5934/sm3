package com.kh.tc.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.tc.product.model.service.requestService;
import com.kh.tc.product.model.vo.product;

 
@WebServlet("/searchRequestEngine.do")
public class searchRequestEngine extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public searchRequestEngine() {
        super();
    }
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String c_code=request.getParameter("c_code");
		String p_name=request.getParameter("p_name");
		 
		System.out.println(c_code);
		System.out.println(p_name);
	 
		ArrayList<product> list= (ArrayList<product>) new requestService().searchRequestEngine(p_name);
		 
		 String page="";
		 System.out.println("서블릿 복귀");
		 System.out.println(list);
		 
		 
		 if(list!=null){
			 page = "views/category/requestSearch.jsp";
			 request.setAttribute("list", list);
			 
		 }else{
			 page="views/common/errorPage.jsp";
			 request.setAttribute("msg", "장바구니 저장실패");
		 }
		
		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
	
	
	
	
	
	
	
	}

	
	
	
	
	
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
