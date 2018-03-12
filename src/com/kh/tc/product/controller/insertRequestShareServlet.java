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

@WebServlet("/insertRequest.do")
public class insertRequestShareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public insertRequestShareServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		product p = new product();
		String p_name = request.getParameter("p_name");
		// Date p_deadline=request.getParameter("p_deadline");

		int p_price = Integer.parseInt(request.getParameter("p_price")); //
		String p_simplecontent = request.getParameter("p_simplecontent"); //
		String req_status = request.getParameter("req_status"); //

		p.setP_name(p_name);
		p.setP_price(p_price);
		p.setP_simplecontent(p_simplecontent);
		p.setReq_status(req_status);

		System.out.println(p_name);
		// System.out.println(p_deadline);
		System.out.println(p_price);
		System.out.println(p_simplecontent);
		System.out.println(req_status);

		int result= new requestService().insertRequest(p);

		System.out.println("서블릿"+result);
		
		
		// 여기가 왜 안 되지?
		String page = "";
		 if (result > 0 ) {
			 response.sendRedirect(request.getContextPath() + "/searchRequest.do");
 
		 } else {
		request.setAttribute("msg", "fail");
		request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		
		 }
		 
		 
		 RequestDispatcher view = request.getRequestDispatcher(page);
		 view.include(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
