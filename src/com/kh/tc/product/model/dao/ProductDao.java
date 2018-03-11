package com.kh.tc.product.model.dao;
   
import static com.kh.tc.common.JDBCTemplet.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
 
import com.kh.tc.product.model.vo.Pay;
import com.kh.tc.product.model.vo.product;

public class ProductDao {
	private Properties prop = new Properties();

	public ProductDao() {
		String fileName = ProductDao.class.getResource("/sql/product/product-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int selectCate(Connection con, String cate1, String cate2, String cate3, String cate4) {
		int cate_code = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectCate");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, cate1);
			pstmt.setString(2, cate2);
			pstmt.setString(3, cate3);
			pstmt.setString(4, cate4);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				cate_code = rset.getInt(1);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return cate_code;
	}

	public int insertProduct(Connection con, product p) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = prop.getProperty("insertProduct");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getP_type());
			pstmt.setInt(2, p.getCate_code());
			pstmt.setString(3, p.getP_name());
			pstmt.setString(4, p.getP_content());
			pstmt.setInt(5, p.getP_share_count());
			pstmt.setString(6, p.getPhone());
			pstmt.setString(7, p.getP_status());
			pstmt.setInt(8, p.getP_price());
			pstmt.setInt(9, p.getC_code());
			pstmt.setString(10, p.getP_simplecontent());
			pstmt.setString(11, p.getP_deadline());
			pstmt.setString(12, p.getOption());
			pstmt.setInt(13, p.getC_code());
			pstmt.setString(14, p.getSavePath());
			pstmt.setString(15, p.getOriginFiles());
			pstmt.setString(16, p.getSaveFiles());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);

		}
		return result;
	}

	public ArrayList<String> selectCategory(Connection con, String cate1, String cate2, String cate3, String cate4) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<String> cateList = null;

		try {
			if (cate3 == null) {
				String query = prop.getProperty("selectCateList");
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, cate1);
				pstmt.setString(2, cate2);

				rset = pstmt.executeQuery();
				cateList = new ArrayList<String>();
				cateList.add(cate1);
				cateList.add(cate2);
				while (rset.next()) {
					cateList.add(rset.getString(1));
				}
			} else {

				String query = prop.getProperty("selectCateList1");
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, cate1);
				pstmt.setString(2, cate2);
				pstmt.setString(3, cate3);

				rset = pstmt.executeQuery();

				cateList = new ArrayList<String>();
				cateList.add(cate1);
				cateList.add(cate2);
				cateList.add(cate3);
				while (rset.next()) {
					cateList.add(rset.getString(1));
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return cateList;
	}

	public ArrayList<product> selectPro(Connection con, String cate1, String cate2, String cate3, String cate4) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<product> proList = null;

		try {
			if (cate3 == null && cate4 == null) {
				String query = prop.getProperty("selectProList");
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, cate1);
				pstmt.setString(2, cate2);

				rset = pstmt.executeQuery();
				proList = new ArrayList<product>();

				while (rset.next()) {
					product p = new product();
					p.setP_code(rset.getInt("p_code"));
					p.setP_type(rset.getString("p_type"));
					p.setCate_code(rset.getInt("cate_code"));
					p.setP_name(rset.getString("p_name"));
					p.setP_content(rset.getString("p_content"));
					p.setP_share_count(rset.getInt("p_share_count"));
					p.setPhone(rset.getString("phone"));
					p.setP_status(rset.getString("p_status"));
					p.setP_price(rset.getInt("p_price"));
					p.setC_code(rset.getInt("c_code"));
					p.setP_date(rset.getDate("p_date"));
					p.setAd_code(rset.getInt("ad_code"));
					p.setStar_point(rset.getFloat("star_point"));
					p.setP_simplecontent(rset.getString("p_simplecontent"));
					p.setP_deadline(rset.getString("p_deadLine"));
					p.setOriginFiles(rset.getString("OR_FILE_NAME"));
					p.setSaveFiles(rset.getString("SEC_FILE_NAME"));

					proList.add(p);

				}
			} else if (cate4 == null) {
				String query = prop.getProperty("selectProList2");
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, cate1);
				pstmt.setString(2, cate2);
				pstmt.setString(3, cate3);

				rset = pstmt.executeQuery();
				proList = new ArrayList<product>();

				while (rset.next()) {
					product p = new product();
					p.setP_code(rset.getInt("p_code"));
					p.setP_type(rset.getString("p_type"));
					p.setCate_code(rset.getInt("cate_code"));
					p.setP_name(rset.getString("p_name"));
					p.setP_content(rset.getString("p_content"));
					p.setP_share_count(rset.getInt("p_share_count"));
					p.setPhone(rset.getString("phone"));
					p.setP_status(rset.getString("p_status"));
					p.setP_price(rset.getInt("p_price"));
					p.setC_code(rset.getInt("c_code"));
					p.setP_date(rset.getDate("p_date"));
					p.setAd_code(rset.getInt("ad_code"));
					p.setStar_point(rset.getFloat("star_point"));
					p.setP_simplecontent(rset.getString("p_simplecontent"));
					p.setP_deadline(rset.getString("p_deadLine"));
					p.setOriginFiles(rset.getString("OR_FILE_NAME"));
					p.setSaveFiles(rset.getString("SEC_FILE_NAME"));

					proList.add(p);
				}
			} else {
				String query = prop.getProperty("selectProList3");
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, cate1);
				pstmt.setString(2, cate2);
				pstmt.setString(3, cate3);
				pstmt.setString(4, cate4);

				rset = pstmt.executeQuery();
				proList = new ArrayList<product>();

				while (rset.next()) {
					product p = new product();
					p.setP_code(rset.getInt("p_code"));
					p.setP_type(rset.getString("p_type"));
					p.setCate_code(rset.getInt("cate_code"));
					p.setP_name(rset.getString("p_name"));
					p.setP_content(rset.getString("p_content"));
					p.setP_share_count(rset.getInt("p_share_count"));
					p.setPhone(rset.getString("phone"));
					p.setP_status(rset.getString("p_status"));
					p.setP_price(rset.getInt("p_price"));
					p.setC_code(rset.getInt("c_code"));
					p.setP_date(rset.getDate("p_date"));
					p.setAd_code(rset.getInt("ad_code"));
					p.setStar_point(rset.getFloat("star_point"));
					p.setP_simplecontent(rset.getString("p_simplecontent"));
					p.setP_deadline(rset.getString("p_deadLine"));
					p.setOriginFiles(rset.getString("OR_FILE_NAME"));
					p.setSaveFiles(rset.getString("SEC_FILE_NAME"));

					proList.add(p);

				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return proList;
	}

	public ArrayList<product> selectPro(Connection con, int minPage, int maxPage, String cate1, String cate2,
			String cate3, String cate4) {

		return null;
	}

	public product selectOne(Connection con, int num) {
		product product = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectProduct");

		System.out.println("dao 조회 성공");
		System.out.println(num);
		System.out.println(query);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				product = new product();
				product.setP_name(rset.getString("p_name"));
				product.setP_price(rset.getInt("p_price"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return product;
	}

	public int insertPay(Connection con, Pay pay) {
		PreparedStatement pstmt = null;

		int result = 0;

		String query = prop.getProperty("insertPay");
		// 결제코드
		System.out.println("dao 성공");
		System.out.println(pay);
		System.out.println(query);

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, pay.getAc_code());
			pstmt.setInt(2, pay.getPay_price());
			pstmt.setString(3, pay.getHowtopay());
			pstmt.setString(4, pay.getP_name());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);

		}
		return result;
	}

	

 

	public int insertReply(Connection con, product p) {
	PreparedStatement pstmt = null;
	int result = 0;
	
	String query= prop.getProperty("insertReply");
	
	try {
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, p.getReply_content());
		result = pstmt.executeUpdate();
	
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
	}

	return result;
}

	public ArrayList<product> selectReplyList(Connection con, int c_code) {
		 System.out.println("여기까지 옴");
	 
	PreparedStatement pstmt= null;
	ResultSet rset = null;
	ArrayList<product> replyList = null;
	
	String query= prop.getProperty("selectReplyList");
		
	c_code=1;
	try {
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, c_code);
		System.out.println(c_code);
		rset = pstmt.executeQuery();
		replyList = new ArrayList<product>();
		
		while(rset.next()) {
			product p= new product();
			p.setReply_content(rset.getString("reply_content"));
		 
			replyList.add(p);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
		close(rset);
	}
	
	
	return replyList;
}

	 
	public ArrayList<Pay> searchPay(Connection con, String ac_code) {
		 System.out.println("여기까지 옴");
 
			PreparedStatement pstmt= null;
			ResultSet rset = null;
			ArrayList<Pay> list = null;
			
			String query= prop.getProperty("searchPay");
			System.out.println(query);
			try {
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, ac_code);
				
				System.out.println(ac_code);
				rset = pstmt.executeQuery();
				list = new ArrayList<Pay>();
				
				while(rset.next()) {
					Pay pay= new Pay();
					
					// 여기부터가 문제.
					pay.setPay_price(rset.getInt("pay_price"));
			  
					list.add(pay);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
				close(rset);
			}
			System.out.println("dao" +list);
			return list;
}
}
