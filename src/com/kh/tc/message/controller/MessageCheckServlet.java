package com.kh.tc.message.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.tc.message.model.service.MessageService;

@WebServlet("/messageCheck.me")
public class MessageCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MessageCheckServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String receveId = request.getParameter("receveId");
		
		int result = new MessageService().messageCheck(userId, receveId);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8"); 
		 
		new Gson().toJson(result, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
