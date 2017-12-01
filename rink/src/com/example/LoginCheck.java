package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.DAO.memberVO;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Login_id");
		String password = request.getParameter("Login_pw");
		
		memberDAO dao = new memberDAO();
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		
		ArrayList<memberVO> list = new ArrayList<memberVO>();
		
		try {
			list = dao.Login(id,password);
			if(list.get(0).getCnt()==0) {//아이디가 없는 경우
				
				response.sendRedirect("jy/firstMain/IdFail.jsp");
				
				
			}else if(list.get(0).getCnt()==1) {//아이디가 있는데 비밀번호가 틀렸을 경우
				
				response.sendRedirect("jy/firstMain/PwFail.jsp");
				
			}else if(list.get(0).getCnt()==2) {//아이디,비밀번호가 다 맞은 경우
				
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("password", password);
				session.setAttribute("Login_name", list.get(0).getBabyName());
				session.setAttribute("Login_sex", list.get(0).getGender());
				session.setAttribute("Login_blood", list.get(0).getBlood());
				session.setAttribute("Login_weight", list.get(0).getWeight());
				session.setAttribute("Login_height", list.get(0).getHeight());
				session.setAttribute("Login_birth", list.get(0).getBirthday());
				
				response.sendRedirect("jy/firstMain/LoginSuccess.jsp");
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
