package com.kh.tc.product.model.service;

import static com.kh.tc.common.JDBCTemplet.close;
import static com.kh.tc.common.JDBCTemplet.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.tc.product.model.dao.ProductDao;

import com.kh.tc.product.model.dao.requestDao;

import com.kh.tc.product.model.vo.product;

public class requestService {

	public product selectOne(int num) {
		Connection con = getConnection();
		 
		product product = new ProductDao().selectOne(con, num);
		close(con);
		
		return product;
	}

	
 
	
	public ArrayList<product> selectAll(int currentPage, int limit, String req_status) {
		Connection con = getConnection();

		ArrayList<product> list= (ArrayList<product>) new requestDao().selectAll(con,currentPage, limit, req_status);
		close(con);
		
		return list;
	}

	public int getListCount() {
		Connection con = getConnection();
		int listCount = new requestDao().getListCount(con);
		
		close(con);
		return listCount;
	}

 

	 
 
	
}
