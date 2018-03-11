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

	public ArrayList<Pay> insertPay(Pay pay) {
		ArrayList<Pay> list =null;
		
		Connection con = getConnection();
		
		int result = new ProductDao().insertPay(con, pay);
		if(result>0){
			
			list= new ProductDao().searchPay(con, pay.getAc_code());
			commit(con);
		}else{
			rollback(con);
		}
		
		close(con);
		
		 System.out.println(list);
		return list;
	}

	
	public ArrayList<product> insertReply(product p) {
	 
	Connection con = getConnection();
	ArrayList<product> replyList= null;
	int result = new ProductDao().insertReply(con, p);
	
	if(result >0) {
		commit(con);
		replyList = new ProductDao().selectReplyList(con, p.getC_code());
		

		System.out.println("서비스 되돌아 오나");
		System.out.println(replyList);
		
	}else {
		rollback(con);
	}
	close(con);
	return replyList;
}

	
}
