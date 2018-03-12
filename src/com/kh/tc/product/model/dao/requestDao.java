package com.kh.tc.product.model.dao;
 
import static com.kh.tc.common.JDBCTemplet.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
 
import com.kh.tc.customer.model.dao.CustomerDao;
import com.kh.tc.product.model.vo.Pay;
import com.kh.tc.product.model.vo.product;


public class requestDao {

	private Properties prop = new Properties();
	
	public requestDao(){
		String fileName = CustomerDao.class.getResource("/sql/product/product-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	 
	public product selectOne(Connection con, String req_status) {
		product product = null;
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectAllrequest");
		
		System.out.println("select all dao");
 
		System.out.println(query);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, req_status);
			rset = pstmt.executeQuery();

			while(rset.next()) {
				product = new product();
				product.setP_name(rset.getString("p_name"));
				product.setP_price(rset.getInt("p_price"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return product;
	}

	
	public ArrayList<product> selectRequestList(Connection con, String req_status, int currentPage, int limit) {
		 
	      //페이징 처리 후
	      PreparedStatement pstmt = null;
	      ResultSet rset =null;
	      ArrayList<product> list = null;
	       
	      String query = prop.getProperty("selectAllrequest");
 
	      
	      try {
	         //페이징 처리 전

	         //페이진 처리 후
	         pstmt = con.prepareStatement(query);
	         
	         //조회 시작할 행 번호와 마지막 행 번호 계산
	         int startRow = (currentPage -1 )*limit+1;
	         int endRow = startRow + limit -1;
	         
	         pstmt.setString(1, req_status);
	         pstmt.setInt(2, startRow);
	         pstmt.setInt(3, endRow);
	         
	         
	         rset = pstmt.executeQuery();
	         list= new ArrayList<product>();
	         
	         while(rset.next()){
	            product p= new product();
 
	    		p= new product();
				p.setP_code(rset.getInt("p_code"));
				p.setP_name(rset.getString("p_name"));
				p.setC_code(rset.getInt("c_code"));
				p.setP_date(rset.getDate("p_date"));
				p.setP_price(rset.getInt("p_price"));
 
				list.add(p);
	               
	         }
	  
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally{
	         close(pstmt);
	         close(rset);
	      }
 
	      return list;
	   }
	
	 
	public int getListCount(Connection con) {
		Statement stmt = null;
	      int listCount = 0;
	      ResultSet rset = null;
	      
	      String query = prop.getProperty("listCount");
	      try {
	          stmt = con.createStatement();
	          rset = stmt.executeQuery(query);
	          
	          if(rset.next()){
	             listCount = rset.getInt(1);
	          }
	          
	       } catch (SQLException e) {
	          e.printStackTrace();
	       }finally{
	          close(stmt);
	          close(rset);
	       }

	       return listCount;
	      
	       
	}

	public ArrayList<product> selectOneRequest(Connection con, int num) {
		ArrayList<product> list = new ArrayList<product>();
		PreparedStatement pstmt = null;
	     product p =  null;
	      ResultSet rset= null;
	      
	      String query = prop.getProperty("selectOneRequest");
	 
	      try {
	         pstmt = con.prepareStatement(query);
	         pstmt.setInt(1, num);
	         
	         rset = pstmt.executeQuery();
	         
	         while(rset.next()){
	            p= new product();
	        	p.setP_code(rset.getInt("p_code"));
				p.setP_name(rset.getString("p_name"));
				p.setC_code(rset.getInt("c_code"));
				p.setP_date(rset.getDate("p_date"));
				p.setP_price(rset.getInt("p_price"));
	             list.add(p);
	         }
	    
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally{
	         close(pstmt);
	         close(rset);
	      }
	      return list;
	   }

	public int insertRequest(Connection con, product p) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertRequest");

		// 결제코드
		System.out.println("dao 성공");
		System.out.println(p);
		System.out.println(query);

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getP_name());
			pstmt.setInt(2, p.getP_price());
			pstmt.setString(3, p.getP_simplecontent());
			pstmt.setString(4, p.getReq_status());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);

		}
		return result;
	}

	public ArrayList<product> selectRequestEngine(Connection con, String p_name) {
		ArrayList<product> list = new ArrayList<product>();
		PreparedStatement pstmt = null;
	      ResultSet rset= null;
	      
	      String query = prop.getProperty("searchOneRequestEngine");
	 
	      try {
	         pstmt = con.prepareStatement(query);
	         pstmt.setString(1, p_name);
	         rset = pstmt.executeQuery();
	         
	         System.out.println();
	         
	         while(rset.next()){
	            product p= new product();
	        	p.setP_code(rset.getInt("p_code"));
				p.setP_name(rset.getString("p_name"));
				p.setC_code(rset.getInt("c_code"));
				p.setP_date(rset.getDate("p_date"));
				p.setP_price(rset.getInt("p_price"));
	            list.add(p);
	         }
	  
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally{
	         close(pstmt);
	         close(rset);
	      }
	      System.out.println("완료?");
	      System.out.println(list);
	      return list;
	   
	}

	
	
	
	
//	public ArrayList<product> searchRequest(Connection con) {
//		
//		ArrayList<product> list = new ArrayList<product>();
//		PreparedStatement pstmt = null;
//	     product p =  null;
//	      ResultSet rset= null;
//	      
//	      String query = prop.getProperty("searchRequest");
//	 
//	      try {
//	         pstmt = con.prepareStatement(query);        
//	         rset = pstmt.executeQuery();
//	         
//	         while(rset.next()){
//	            p= new product();
//	        	p.setP_code(rset.getInt("p_code"));
//				p.setP_name(rset.getString("p_name"));
//				p.setC_code(rset.getInt("c_code"));
//				p.setP_date(rset.getDate("p_date"));
//				p.setP_price(rset.getInt("p_price"));
//	             list.add(p);
//	         }
//	    
//	         
//	      } catch (SQLException e) {
//	         e.printStackTrace();
//	      }finally{
//	         close(pstmt);
//	         close(rset);
//	      }
//	      return list;
//	   }
	
	
		 
	}
	 
