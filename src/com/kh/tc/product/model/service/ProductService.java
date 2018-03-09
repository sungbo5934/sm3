package com.kh.tc.product.model.service;
import static com.kh.tc.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.tc.product.model.dao.ProductDao;
import com.kh.tc.product.model.vo.Pay;
import com.kh.tc.product.model.vo.product;

public class ProductService {

	public int selectCate(String cate1, String cate2, String cate3, String cate4) {
		Connection con = getConnection();
		int cate_code = new ProductDao().selectCate(con, cate1,  cate2,  cate3,  cate4);
		
		close(con);
		
		return cate_code;
	}

	public int insertProduct(product p,String option) {
		Connection con = getConnection();
		int result = new ProductDao().insertProduct(con,p);
		
		
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return result;
	}

	public ArrayList<String> selectCategory(String cate1,String cate2,String cate3,String cate4) {
		Connection con = getConnection();
		ArrayList<String> cateList = new ProductDao().selectCategory(con,cate1,cate2,cate3,cate4);
		
		close(con);
		
		return cateList;
	}

	public ArrayList<product> selectPro(String cate1,String cate2,String cate3,String cate4) {
		Connection con = getConnection();
		ArrayList<product> proList = new ProductDao().selectPro(con, cate1,cate2, cate3,cate4);
		
		close(con);
		
		return proList;
	}

	public ArrayList<product> selectProPage(int minPage, int maxPage, String cate1, String cate2, String cate3,
			String cate4) 
	{
		Connection con = getConnection();
		ArrayList<product> proList = new ProductDao().selectPro(con, minPage,  maxPage, cate1,cate2, cate3,cate4);
		
		close(con);
		
		return proList;
	}
	
	public product selectOne(int num) {
		Connection con = getConnection();
		 
		product product = new ProductDao().selectOne(con, num);
		close(con);
		
		return product;
	}

	public int insertPay(Pay pay) {
		int result= 0;
		Connection con = getConnection();
		
		result = new ProductDao().insertPay(con, pay);
		close(con);
		
		 System.out.println(result);
		return result;
	}

	public int insertRequest(product p) {
			int result= 0;
			Connection con = getConnection();
			
			result = new ProductDao().insertRequest(con, p);
			System.out.println("서비스");
			System.out.println(result);
			close(con);
		 
		return result;
	}

}
