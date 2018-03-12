package com.kh.tc.customer.model.service;

import static com.kh.tc.common.JDBCTemplet.getConnection;

import java.sql.Connection;

import com.kh.tc.customer.model.dao.CustomerDao;
import com.kh.tc.customer.model.vo.Customer;
public class CustomerService {

	public Customer loginCheck(String userId, String password) {
		Connection con = getConnection();
		Customer loginUser = new CustomerDao().loginCheck(con,userId,password);
		return loginUser;
	}

}
