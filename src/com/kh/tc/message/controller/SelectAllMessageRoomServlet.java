package com.kh.tc.message.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTMLDocument.Iterator;

import com.google.gson.Gson;
import com.kh.tc.message.model.service.MessageService;
import com.kh.tc.message.model.vo.Message;

@WebServlet("/selectAllMessageRoom.me")
public class SelectAllMessageRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectAllMessageRoomServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		System.out.println("room"+userId);
		
		
		HashMap<String, String> hMap = new MessageService().selectAllMessageRoom(userId);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8"); 
		
		ArrayList<String> list = new ArrayList<String>();
		
		java.util.Iterator<String> itr = hMap.keySet().iterator();
		while (itr.hasNext()) {
	    String key = (String)itr.next();
	    list.add(key);
		}
	    for(int i = 0; i < list.size(); i++){	    	
	    	System.out.println(list.get(i));
	    }
	    ArrayList<Message> meList = null;
	    meList = new MessageService().selectMessageRoom(userId, list); 
		for (int i = 0; i < meList.size(); i++) {
			System.out.println("meList : "+meList.get(i));			
		}
	    new Gson().toJson(meList, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
