package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;

@WebServlet("/SearchInfo")
public class SearchInfo extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String phone = request.getParameter("searchId_phone");
		
		memberDAO dao = new memberDAO();
		
		String[] array = new String[2];
		
		try {
			array = dao.searchID(phone);
			
			String search_id = array[0];
			String search_pw = array[1];
			
			HttpSession session = request.getSession();
			/*session.setAttribute("search_id", search_id);
			session.setAttribute("search_pw", search_pw);*/
			response.sendRedirect("jy/firstMain/jh_main.jsp");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
