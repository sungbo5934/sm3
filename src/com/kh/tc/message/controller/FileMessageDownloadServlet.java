package com.kh.tc.message.controller;

import java.io.BufferedInputStream;

import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.tc.file.model.vo.File;
import com.kh.tc.message.model.service.MessageService;

@WebServlet("/fileMessageDown.me")
public class FileMessageDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FileMessageDownloadServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileCode = request.getParameter("fileCode");
		
		File file = new MessageService().selectOneServlet(fileCode);
		
		//폴더에서 파일을 읽을 스트림 생성
		BufferedInputStream buf = null;
		
		//클라이언트로 내보낼 출력 스트림
		ServletOutputStream downOut = null;
		
		downOut = response.getOutputStream();
		
		//스트림으로 전송할 파일 객체 생성
		java.io.File downFile = new java.io.File(file.getFile_root()+ file.getSec_file_name());
		
		//한글 파일명에 대한 인코딩 처리
		response.setContentType("text/plane; charset=UTF-8");
		
		//강제적으로 다운로드 처리
		response.setHeader("Content-Disposition", "attachment; filename=\""+ new String(file.getOr_file_name().getBytes("UTF-8"), "ISO-8859-1") + "\"");
		
		response.setContentLength((int)downFile.length());
		
		//파일에 대한 스트림 생성
		FileInputStream fin = new FileInputStream(downFile);
		
		buf = new BufferedInputStream(fin);
		
		int readBytes = 0;
		while((readBytes = buf.read()) != -1){
			downOut.write(readBytes);
		}
		
		downOut.close();
		buf.close();
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
