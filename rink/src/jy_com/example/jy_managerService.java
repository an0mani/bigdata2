package jy_com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jy_com.DAO.FileVO;
import jy_com.DAO.jy_managerDAO;
import jy_com.DAO.jy_managerVO;

@WebServlet("/jy_managerService")
public class jy_managerService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("text/html;euc-kr");
		HttpSession session = request.getSession();
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String id = (String) session.getAttribute("id");
		System.out.println(name);
		System.out.println(title);
		System.out.println(text);
		
		
		try {
			
			jy_managerDAO dao = new jy_managerDAO();
			int cnt = dao.managermessage(id,name, title, text );
			System.out.println(cnt);
			if (cnt > 0) {
				
				response.sendRedirect("messageselectService");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		
		}
		
	}

}
