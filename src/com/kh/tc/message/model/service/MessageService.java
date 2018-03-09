package com.kh.tc.message.model.service;

import static com.kh.tc.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.tc.message.model.dao.MessageDao;
import com.kh.tc.message.model.vo.Message;

public class MessageService {

	public ArrayList<Message> insertMsg(String msgContent, String userId, String receveId) {
		Connection con = getConnection();
		ArrayList<Message> meList=null;
		System.out.println("써비쓰 들어왔니?");
		int result = new MessageDao().insertMessage(con, msgContent, userId, receveId);
		System.out.println("service result : "+result );
		if(result > 0){
			commit(con);
			meList = new MessageDao().selectMessage(con, userId, receveId);
		}else{
			rollback(con);
		}
		close(con);
		
		return meList;
	}

	public int updateStarCheck(String userId, String receveId) {
		Connection con = getConnection();
		
		int result = new MessageDao().updateStarCheck(con, userId, receveId);
		
		if(result > 0){
			commit(con);
		}else{
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public int updateStarCheck2(String userId, String receveId) {
		Connection con = getConnection();
		
		int result = new MessageDao().updateStarCheck2(con, userId, receveId);
		
		if(result > 0){
			commit(con);
		}else{
			rollback(con);
		}
		close(con);
		
		close(con);
		
		return result;
	}

	public int messageCheck(String userId, String receveId) {
		Connection con = getConnection();
		
		int result = new MessageDao().messageCheck(con, userId, receveId);
		
		if(result > 0){
			commit(con);
		}else{
			rollback(con);
		}
		close(con);
		
		close(con);
		return result;
	}

	public ArrayList<Message> selectAllMessage(String userId, String receveId) {
		Connection con = getConnection();
		ArrayList<Message> meList = null;
		
		meList = new MessageDao().selectMessage(con, userId, receveId);
		
		return meList;
	}

	public HashMap<String, String> selectAllMessageRoom(String userId) {
		Connection con = getConnection();
		
		HashMap<String, String> hMap = new MessageDao().selectAllMessageRoom1(con, userId);
		
		return hMap;
	}

	public ArrayList<Message> selectMessageRoom(String userId, ArrayList<String> list) {
		Connection con = getConnection();
		ArrayList<Message> meList = new MessageDao().selectMessageRoom(con, userId, list); 
		
		
		return meList;
	}

	public ArrayList<Message> selectStarMessageRoom(String userId, ArrayList<String> list) {
		Connection con = getConnection();
		ArrayList<Message> meList = new MessageDao().selectStarMessageRoom(con, userId, list); 
		
		
		return meList;
	}

	public ArrayList<Message> selectUnCheckMessageRoom(String userId, ArrayList<String> list) {
		Connection con = getConnection();
		ArrayList<Message> meList = new MessageDao().selectUnCheckMessageRoom(con, userId, list); 
		
		
		return meList;
	}

}
