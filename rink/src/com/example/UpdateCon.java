package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;

@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("text/html; euc-kr"); 
		
		String id = (String)session.getAttribute("id");
		String name = request.getParameter("baby_Name");
		String sex = request.getParameter("sex");
		String birth = request.getParameter("birth");
		String blood = request.getParameter("blood");
		String weight = request.getParameter("weight");
		String height = request.getParameter("height");


		memberDAO dao = new memberDAO();

		try {
			int cnt = dao.UpdateMember(id, name, sex, birth, blood, weight, height);

			if (cnt > 0) {
				
				session.setAttribute("Login_name", name);
				session.setAttribute("Login_sex", sex);
				session.setAttribute("Login_blood", blood);
				session.setAttribute("Login_weight", weight);
				session.setAttribute("Login_height", height);
				session.setAttribute("Login_birth", birth);
				
				response.sendRedirect("jy/firstMain/UpdateSuccess.jsp");
				
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
