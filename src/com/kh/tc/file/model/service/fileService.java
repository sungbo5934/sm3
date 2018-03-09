package com.kh.tc.file.model.service;

import static com.kh.tc.common.JDBCTemplet.close;
import static com.kh.tc.common.JDBCTemplet.commit;
import static com.kh.tc.common.JDBCTemplet.getConnection;
import static com.kh.tc.common.JDBCTemplet.rollback;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.tc.file.model.dao.fileDao;
import com.kh.tc.file.model.vo.File;

public class fileService {

	public int insertProfilImg(File profileFile) {
		Connection con = getConnection();

		int result = new fileDao().insertProfilImg(con, profileFile);

		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
	}

	public ArrayList<HashMap<String, Object>> selectProfilImg(String userId) {
		Connection con = getConnection();
		ArrayList<HashMap<String, Object>> profilImg = new fileDao().selectProfilImg(con, userId);

		close(con);
		return profilImg;
	}

}
