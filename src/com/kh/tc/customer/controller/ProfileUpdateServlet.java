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

@WebServlet("/profileupdate")
public class ProfileUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProfileUpdateServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		// 일반/기업 회원구분
		String c_type = request.getParameter("c_type");
		// 회원비번
		String userPwd = request.getParameter("userPwd");
		// email
		String strEmail1 = request.getParameter("strEmail1");
		String strEmail2b = request.getParameter("strEmail2b");
		String email = strEmail1 + "@" + strEmail2b;

		// 번호
		String strMobil1 = request.getParameter("strMobil1");
		String strMobil2 = request.getParameter("strMobil2");
		String strMobil3 = request.getParameter("strMobil3");
		String mobile = strMobil1 + "-" + strMobil2 + "-" + strMobil3;

		// 계좌번호
		String bankname = request.getParameter("bankname");
		String bankaddr = request.getParameter("bankaddr");
		String account = bankname + "/" + bankaddr;

		String emailAlarm = request.getParameter("emailAlarm");
		String snsAlarm = request.getParameter("snsAlarm");

		Customer c = new Customer();
		c.setC_id(userId);
		c.setC_type(c_type);
		c.setC_pwd(userPwd);
		c.setC_email(email);
		c.setC_phone(mobile);
		c.setC_accout(account);
		c.setMail_alarm(emailAlarm);
		c.setSms_alarm(snsAlarm);
		System.out.println("cid : " + c.getC_id());
		int result = new CustomerService().profileUpdate(c);
		System.out.println("result : " + result);
		String page = "";
		if (result > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", c);
			response.sendRedirect("views/member/myPage.jsp");
		} else {
			page = "views/member/profileupdate.jsp";
			RequestDispatcher view = request.getRequestDispatcher(page);
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
