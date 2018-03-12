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
		
		System.out.println("select all dao ��ȸ ����");
 
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

	public ArrayList<product> selectAll(Connection con, int currentPage, int limit, String req_status) {
		ArrayList<product> list= new ArrayList<product>();
		product p= null;
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		 
		
		String query = prop.getProperty("selectAllrequest");
		
		System.out.println("dao ��ȸ ����");
		System.out.println(query);
		try {
			
			pstmt = con.prepareStatement(query);
			 int startRow = (currentPage -1 )*limit+1;
	         int endRow = startRow + limit -1;
	         
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
			pstmt.setString(3, req_status);
 
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				p= new product();
				p.setP_name(rset.getString("p_name"));
				p.setC_code(rset.getString("c_code"));
				p.setP_date(rset.getDate("p_date"));
				p.setP_price(rset.getInt("p_price"));
				list.add(p);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
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
		

	
	
}
