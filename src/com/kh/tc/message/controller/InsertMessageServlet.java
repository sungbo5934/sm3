package com.kh.tc.message.controller;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.tc.message.model.dao.MessageDao;
import com.kh.tc.message.model.service.MessageService;
import com.kh.tc.message.model.vo.Message;

@WebServlet("/insertMsg.me")
public class InsertMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertMessageServlet() {
        super();
    }
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	      String msgContent = request.getParameter("msgContent");
	      String receveId = request.getParameter("receveId");
	      String userId = request.getParameter("userId");
	      
	      System.out.println("ser m"+msgContent);
	      System.out.println("ser r"+receveId);
	      System.out.println("ser U"+userId);
	      
	      ArrayList<Message> meList = new MessageService().insertMsg(msgContent, userId, receveId);
	      
	      response.setContentType("application/json");
		  response.setCharacterEncoding("UTF-8"); 
		  
		  new Gson().toJson(meList, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
