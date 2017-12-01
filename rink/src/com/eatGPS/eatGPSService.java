package com.eatGPS;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/eatGPSService")
public class eatGPSService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("text/html; euc-kr");
		
		HttpSession session = request.getSession();
		eatGPSDAO dao = new eatGPSDAO();
		
		ArrayList<eatGPSVO> list = null;
		
		try {
			list = dao.SearchAll();
			session.setAttribute("eatGPS", list);
			System.out.println("¼º°ø");
			
			response.sendRedirect("jy/news/eatGPS.jsp");
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
