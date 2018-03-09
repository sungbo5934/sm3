package com.kh.tc.customer.model.service;

import static com.kh.tc.common.JDBCTemplet.close;
import static com.kh.tc.common.JDBCTemplet.commit;
import static com.kh.tc.common.JDBCTemplet.getConnection;
import static com.kh.tc.common.JDBCTemplet.rollback;

import java.sql.Connection;

import com.kh.tc.customer.model.dao.CustomerDao;
import com.kh.tc.customer.model.vo.Customer;

public class CustomerService {

	public Customer loginCheck(String userId, String password) {
		Connection con = getConnection();
		Customer loginUser = new CustomerDao().loginCheck(con, userId, password);
		return loginUser;
	}

	public Customer selectOne(String id) {
		Connection con = getConnection();

		Customer c = new CustomerDao().selectOne(con, id);

		close(con);

		return c;
	}

	public Customer insertNaver(String id, String email, String actoken) {

		Connection con = getConnection();
		int result = 0;
		Customer c = null;

		result = new CustomerDao().insertNaver(con, id, email, actoken);
		if (result > 0) {
			commit(con);
			c = new CustomerDao().selectOne(con, id);
		} else {
			rollback(con);

		}

		close(con);
		return c;
	}

	public Customer insertGoogle(String id, String name, String email, String actoken) {
		Connection con = getConnection();
		int result = 0;
		Customer c = null;

		result = new CustomerDao().insertGoogle(con, id, name, email, actoken);
		if (result > 0) {
			commit(con);
			c = new CustomerDao().selectOne(con, id + "g");
		} else {
			rollback(con);

		}

		close(con);
		return c;
	}

	public int profileUpdate(Customer c) {
		Connection con = getConnection();
		int result = new CustomerDao().profileUpdate(con, c);
		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		close(con);
		return result;
	}

	public int deleteCustomer(String userId, String deleteReason) {
		Connection con = getConnection();
		int result = new CustomerDao().deleteCustomer(con, userId, deleteReason);
		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		close(con);
		return result;
	}

	public int updateOtherInfo(Customer c) {
		Connection con = getConnection();
		System.out.println("service전");
		int result = new CustomerDao().updateOtherInfo(con, c);
		System.out.println("서비스후");
		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
	}

}
