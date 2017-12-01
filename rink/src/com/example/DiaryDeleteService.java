package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DiaryDAO;


@WebServlet("/DiaryDeleteService")
public class DiaryDeleteService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
		
		try {
			DiaryDAO dao = new DiaryDAO();
			
			int cnt = dao.messageDelete(num);
			
			if (cnt > 0) {
				response.sendRedirect("DiarySelectService");
			}
			
		} catch (Exception e) {

		}

	}

}
