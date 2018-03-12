package com.kh.tc.product.model.service;

import static com.kh.tc.common.JDBCTemplet.*;

import java.sql.Connection;
import java.util.ArrayList;
 
import com.kh.tc.product.model.dao.CartDao;
import com.kh.tc.product.model.vo.product;
 

public class CartService {
 
	public product wishbuy(int num) {
		Connection con = getConnection();
		
		product cart = new CartDao().wishbuy(con, num);
		close(con);
		
		System.out.println(cart);
		return cart;
	}

	public ArrayList<product> deleteCart(int num) {
		Connection con = getConnection();
		ArrayList<product> list = null;
		int result = new CartDao().deleteCart(con,num);
		
		if(result>0) {
			commit(con);
			list=new CartDao().selectList(con);
		}else {
			rollback(con);
		}
		
		
		return list;
	 
	}
	
	
}
