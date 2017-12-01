package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.DAO.memberVO;

@WebServlet("/JoinCheck")
public class JoinCheck extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr"); 
		response.setCharacterEncoding("text/html; charset=euc-kr");
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String babyName = request.getParameter("babyName");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String blood = request.getParameter("blood");
		String weight = request.getParameter("weight");
		String height =request.getParameter("height");
		String birthday = request.getParameter("birthday");
		
		int weight1 = Integer.parseInt(weight);
		int height1 = Integer.parseInt(weight);
		
		try {
			memberDAO dao = new memberDAO();
			int cnt = dao.InsertMember(id, pw, babyName, gender, phone, blood, weight1, height1, birthday);
			
			if(cnt>0) {
				
				HttpSession session = request.getSession();
				
				response.sendRedirect("jy/firstMain/jh_main.jsp");
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
