package com.kh.tc.message.model.dao;

import java.io.FileNotFoundException;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.kh.tc.message.model.vo.Message;

import static com.kh.tc.common.JDBCTemplet.*;

public class MessageDao {
	private Properties prop = new Properties();
	
	public MessageDao(){
		String fileName = MessageDao.class.getResource("/sql/message/message.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertMessage(Connection con, String msgContent, String userId, String receveId) {
		System.out.println("DAO 들어왔니?");
		PreparedStatement pstmt = null;
		int result =0;
		
		String query = prop.getProperty("insertMsg");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userId);
			pstmt.setString(3, msgContent);
			pstmt.setString(4, receveId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		System.out.println("Daoresult : "+ result);
		return result;
	}

	public int updateStarCheck(Connection con, String userId, String receveId) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("updateStarCheck1");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, receveId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}

	public int updateStarCheck2(Connection con, String userId, String receveId) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("updateStarCheck2");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, receveId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}

	public int messageCheck(Connection con, String userId, String receveId) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("messageCheck");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, receveId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Message> selectMessage(Connection con, String userId, String receveId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Message> meList = new ArrayList<Message>();
		
		String query = prop.getProperty("selectMessage");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, receveId);
			pstmt.setString(3, receveId);
			pstmt.setString(4, userId);
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				Message me = new Message();
				me.setcCode(rset.getString("c_code"));
				me.setMsgCode(rset.getString("m_code"));
				me.setMsgContent(rset.getString("m_content"));
				me.setSendTime(rset.getDate("send_time"));
				me.setCheck(rset.getString("check_1"));
				me.setReceveCode(rset.getString("receive_code"));
				me.setStarCheck(rset.getString("star_check"));
				/*System.out.println("dao : "+me.getcCode());
				System.out.println("dao : "+me.getMsgCode());
				System.out.println("dao : "+me.getMsgContent());
				System.out.println("dao : "+me.getReceveCode());
				System.out.println("dao : "+me.getSendTime());*/
				
				meList.add(me);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(rset);
			close(pstmt);
		}
		return meList;
	}

	public HashMap<String, String> selectAllMessageRoom1(Connection con, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, String> hMap = null;
		
		String query = prop.getProperty("selectMessageRoom1");
		String query1 = prop.getProperty("selectMessageRoom2");
				
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userId);
			
			rset = pstmt.executeQuery();
			hMap = new HashMap<String, String>();
			while(rset.next()){
				hMap.put(rset.getString(1), "1");
			}
			System.out.println(hMap.size() + "11");
		
			pstmt = con.prepareStatement(query1);
			pstmt.setString(1, userId);
			pstmt.setString(2, userId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				hMap.put(rset.getString(1), "1");
			}
			System.out.println(hMap.size() + "11");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return hMap;
	}

	public ArrayList<Message> selectMessageRoom(Connection con, String userId, ArrayList<String> list) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectMessageRoom");
		
		ArrayList<Message> meList = new ArrayList<Message>();
		
		System.out.println("daoList : "+ userId);
		System.out.println("daoList : "+ list.get(0));
		System.out.println("daoList : "+ list.get(1));
		System.out.println("daoList : "+ list.get(2));
		try {
			for(int i =0; i < list.size(); i++){
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, userId);
				pstmt.setString(2, list.get(i));
				pstmt.setString(3, list.get(i));
				pstmt.setString(4, userId);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()){
					Message m = new Message();
					m.setcCode(rset.getString(2));
					m.setMsgCode(rset.getString(3));
					m.setMsgContent(rset.getString(4));
					m.setSendTime(rset.getDate("m_s"));
					m.setCheck(rset.getString(6));
					m.setReceveCode(rset.getString(7));
					m.setStarCheck(rset.getString(8));
					
					meList.add(m);
					System.out.println("daoM : "+m.getcCode());
				}
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return meList;
	}

	public ArrayList<Message> selectStarMessageRoom(Connection con, String userId, ArrayList<String> list) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectStarMessage");
		
		ArrayList<Message> meList = new ArrayList<Message>();
		
		System.out.println("daoList : "+ userId);
		System.out.println("daoList : "+ list.get(0));
		System.out.println("daoList : "+ list.get(1));
		System.out.println("daoList : "+ list.get(2));
		try {
			for(int i =0; i < list.size(); i++){
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, userId);
				pstmt.setString(2, list.get(i));
				pstmt.setString(3, list.get(i));
				pstmt.setString(4, userId);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()){
					Message m = new Message();
					m.setcCode(rset.getString(2));
					m.setMsgCode(rset.getString(3));
					m.setMsgContent(rset.getString(4));
					m.setSendTime(rset.getDate("m_s"));
					m.setCheck(rset.getString(6));
					m.setReceveCode(rset.getString(7));
					m.setStarCheck(rset.getString(8));
					
					meList.add(m);
					System.out.println("daoM : "+m.getcCode());
				}
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return meList;
	}

	public ArrayList<Message> selectUnCheckMessageRoom(Connection con, String userId, ArrayList<String> list) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectUnCheckMessage");
		
		ArrayList<Message> meList = new ArrayList<Message>();
		
		System.out.println("daoList : "+ userId);
		System.out.println("daoList : "+ list.get(0));
		System.out.println("daoList : "+ list.get(1));
		System.out.println("daoList : "+ list.get(2));
		try {
			for(int i =0; i < list.size(); i++){
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, userId);
				pstmt.setString(2, list.get(i));
				pstmt.setString(3, list.get(i));
				pstmt.setString(4, userId);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()){
					Message m = new Message();
					m.setcCode(rset.getString(2));
					m.setMsgCode(rset.getString(3));
					m.setMsgContent(rset.getString(4));
					m.setSendTime(rset.getDate("m_s"));
					m.setCheck(rset.getString(6));
					m.setReceveCode(rset.getString(7));
					m.setStarCheck(rset.getString(8));
					
					meList.add(m);
					System.out.println("daoM : "+m.getcCode());
				}
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return meList;
	}




}
