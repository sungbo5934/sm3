package com.kh.tc.file.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.tc.file.model.service.fileService;

@WebServlet("/selectFileImg")
public class SelectFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SelectFileServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		System.out.println("userId = " + userId);

		ArrayList<HashMap<String, Object>> profilImg = new fileService().selectProfilImg(userId);

		/*
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */
		System.out.println("profileFile : " + profilImg);

		String page = "";
		if (profilImg != null) {
			HttpSession session = request.getSession();
			session.setAttribute("profilImg", profilImg);
			response.sendRedirect("views/main/Realmain.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
