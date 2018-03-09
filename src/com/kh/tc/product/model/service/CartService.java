package com.kh.tc.product.model.service;

import static com.kh.tc.common.JDBCTemplet.close;
import static com.kh.tc.common.JDBCTemplet.getConnection;

import java.sql.Connection;
 
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
 
}
