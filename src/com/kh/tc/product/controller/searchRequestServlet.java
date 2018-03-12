package com.kh.tc.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.kh.tc.product.model.service.ProductService;
import com.kh.tc.product.model.service.requestService;
import com.kh.tc.product.model.vo.PageInfo;
import com.kh.tc.product.model.vo.product;

@WebServlet("/searchRequest.do")
public class searchRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public searchRequestServlet() {
		super();
	}

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//페이징 처리 추가
		int currentPage; //현재 페이지를 표시할 변수
		int limit; //한 페이지에 게시글이 몇 개 보여질 것인지
		int maxPage;  //전체 페이지에서 가장 마지막 페이지 
		int startPage;  //한번에 표시될 페이지가 시작할 페이지
		int endPage;   //한번에 표시될 페이지가 끝나는 페이지 
		
		//게시판은 1페이지부터 시작함
		currentPage = 1;
		if(request.getParameter("currentPage") !=null) {
			currentPage= Integer.parseInt(request.getParameter("currentPage"));
		}
		
		//한페이지에 보여질 목록 갯수
		limit = 10;
		
		//전체 목록 갯수를 리턴받음
		requestService rs = new requestService();
		int listCount = rs.getListCount();
		
		System.out.println("listCount : "+listCount);
		
		//총 페이지 계산
		//예를 들면, 목록 수가 123개이면 13페이지가 필요함
		//짜투리 목록이 최소 1개일 때, 1page로 처리하기 위해서
		//전체 목록 / limit + 0.9 
		maxPage = (int)((double)listCount / limit +0.9);  
		
		//현재 페이지에 보여줄 시작 페이지 수 (10개씩 보여지게 될 경우) 
		//아래쪽 페이지 수가 10개씩 보여지게 한다면
		//1, 11, 21, 31...
		startPage = ((int)((double)currentPage / limit +0.9)-1)*limit+1 ;
		
		//목록 아래 보여질 마지막 페이지 수 (10, 20, 30,..)
		endPage = startPage + limit -1;
		
		if(maxPage<endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage,startPage,endPage);
		
		
		
		//ArrayList<Board> list = new BoardService().selectList();
		//System.out.println(list);
		
		
		
		// 재능 요청 고객 내용만 뜨도록
		String req_status = request.getParameter("req_status");
	 
		ArrayList<product> list = new requestService().selectRequestList(req_status, currentPage,limit);
		
		String page="";
		if(list != null) {
			page = "views/category/requestShare.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
		}else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg","fail!");
		}
		RequestDispatcher view =request.getRequestDispatcher(page);
		view.forward(request, response);
	}
		
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
