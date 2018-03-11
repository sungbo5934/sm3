package com.kh.tc.product.model.dao;
  
import static com.kh.tc.common.JDBCTemplet.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties; 
import com.kh.tc.customer.model.dao.CustomerDao;
import com.kh.tc.product.model.vo.product;
 
 
public class CartDao {
	
	private Properties prop = new Properties();
	
	public CartDao(){
		String fileName = CustomerDao.class.getResource("/sql/product/cart-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	 
	public product wishbuy(Connection con, int num) {
		product cart = null;
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectCart");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			
			rset = pstmt.executeQuery();
		
			while(rset.next()) {
	            cart = new product();
	             
	            cart.setP_date(rset.getDate("p_date"));
	            cart.setStar_point(rset.getInt("star_point"));
	            cart.setP_name(rset.getString("p_name"));
	            
	         }
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return cart;
	}

	public int deleteCart(Connection con, int num) {
	 
			PreparedStatement pstmt = null;
			int result=0;
			
			String query = prop.getProperty("deleteCart");
			try {
				pstmt=con.prepareStatement(query);
				pstmt.setInt(1, num);
				result=pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
			return result;
		}
		
	 
	public ArrayList<product> selectList(Connection con) {
		ArrayList<product> list =null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("deleteAfterSelect");
		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
			
			list = new ArrayList<product>();
			
			while(rset.next()) {
				product cart2 = new product();
				
				cart2.setP_date(rset.getDate("p_date"));
	            cart2.setStar_point(rset.getInt("star_point"));
	            cart2.setP_name(rset.getString("p_name"));
				
				list.add(cart2);
			}
			System.out.println("CartDao : "+list);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
		
		return list;
		 
	}

}
