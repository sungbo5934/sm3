package com.kh.tc.product.model.service;
   
import static com.kh.tc.common.JDBCTemplet.close;
import static com.kh.tc.common.JDBCTemplet.commit;
import static com.kh.tc.common.JDBCTemplet.getConnection;
import static com.kh.tc.common.JDBCTemplet.rollback;

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

	 
		public ArrayList<product> selectOneRequest(int num) {
			Connection con = getConnection();
			ArrayList<product> list=null;
			list = new requestDao().selectOneRequest(con, num);
			
			close(con);
			return list;
		}

		
		///// 페이징

		public int getListCount() {
			Connection con = getConnection();
			int listCount = new requestDao().getListCount(con);
			
			close(con);
			return listCount;
		}

		public ArrayList<product> selectRequestList(String req_status, int currentPage, int limit) {
			Connection con = getConnection();
			
			ArrayList<product> list=new requestDao().selectRequestList(con, req_status, currentPage,limit);
			
			close(con);
			return list;
		}
		public int insertRequest(product p) {
	  
			Connection con = getConnection();
			int result= 0;
		
			result = new requestDao().insertRequest(con, p);
			if(result>0) {
				commit(con);
			
			}else {
				rollback(con);
			}
			close(con);
		 
		return result;
	}


		public ArrayList<product> searchRequestEngine(String p_name) {
			Connection con = getConnection();
			ArrayList<product> list=null;
			list = new requestDao().selectRequestEngine(con, p_name);
			
			close(con);
			return list;
		}
  
		}


	  
