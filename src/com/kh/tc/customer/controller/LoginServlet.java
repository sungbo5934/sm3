package com.kh.tc.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.tc.customer.model.service.CustomerService;
import com.kh.tc.customer.model.vo.Customer;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); 
		
		String userId= request.getParameter("userId");
		String password=request.getParameter("password");
		
		Customer loginUser=new CustomerService().loginCheck(userId,password);
		
		String page="";
		
		if(loginUser!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser",loginUser);
			
			page="views/main/Realmain.jsp";
		
		}else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg","다시 로그인해주세요");
			
		}

		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
