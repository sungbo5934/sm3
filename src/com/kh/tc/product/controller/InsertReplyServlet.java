package com.kh.tc.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.tc.product.model.service.ProductService;
import com.kh.tc.product.model.vo.product;
 

@WebServlet("/insertReply.do")
public class InsertReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertReplyServlet() {
        super();
    }

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		String content = request.getParameter("content");
		 
 		System.out.println(content);
		product p= new product();
		p.setReply_content(content);
		 
		ArrayList<product> replyList =  new ProductService().insertReply(p);
				
		System.out.println("서블릿 되돌아 오나");
		System.out.println(replyList);
		
		response.setContentType("application/json");
		new Gson().toJson(replyList, response.getWriter());
		
		
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
