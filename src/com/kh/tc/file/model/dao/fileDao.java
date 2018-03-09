package com.kh.tc.file.model.dao;

import static com.kh.tc.common.JDBCTemplet.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.kh.tc.file.model.vo.File;

public class fileDao {
	private Properties prop = new Properties();

	public fileDao() {
		String fileName = fileDao.class.getResource("/sql/file/file-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int insertProfilImg(Connection con, File profileFile) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertProfilImg");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, profileFile.getC_id());
			pstmt.setString(2, profileFile.getFile_root());
			pstmt.setString(3, profileFile.getOr_file_name());
			pstmt.setString(4, profileFile.getSec_file_name());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<HashMap<String, Object>> selectProfilImg(Connection con, String userId) {
		PreparedStatement pstmt = null;
		ArrayList<HashMap<String, Object>> profilImg = null;
		HashMap<String, Object> hmap = null;
		ResultSet rset = null;
		String query = prop.getProperty("selectProfilImg");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();

			profilImg = new ArrayList<HashMap<String, Object>>();

			if (rset.next()) {
				hmap = new HashMap<String, Object>();

				hmap.put("file_code", rset.getString("file_code"));
				hmap.put("f_from", rset.getString("f_from"));
				hmap.put("c_id", rset.getString("c_id"));
				hmap.put("file_root", rset.getString("file_root"));
				hmap.put("or_file_name", rset.getString("or_file_name"));
				hmap.put("sec_file_name", rset.getString("sec_file_name"));
				hmap.put("update_time", rset.getDate("update_time"));
				profilImg.add(hmap);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return profilImg;
	}

}
