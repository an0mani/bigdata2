package com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DiaryDAO;
import com.DAO.DiaryVO;

import jy_com.DAO.FileDAO;
import jy_com.DAO.FileVO;
import ym_com.DAO.ym_FileDAO;
import ym_com.DAO.ym_FileVO;

@WebServlet("/DiarynumService")
public class DiarynumService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		HttpSession session = request.getSession();
		
		DiaryDAO dao = new DiaryDAO();
		
		ArrayList<DiaryVO> list = new ArrayList<>();
		
		try {
			list = dao.SelectOne(num);
			
			if (list != null) {
				session.setAttribute("set", list);
			}
				response.sendRedirect("jy/Diary/jyo_writing.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
