package jy_com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import jy_com.DAO.FileDAO;
import ym_com.DAO.ym_FileDAO;

@WebServlet("/deleteService")
public class deleteService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		HttpSession session = request.getSession();
		
		System.out.println(num);
		
		String id = (String)session.getAttribute("id");
		
		try {
			FileDAO dao = new FileDAO();
			
			int cnt = dao.messageDelete(num,id);
			
			if (cnt > 0) {
				response.sendRedirect("SelectService");
			}
			response.sendRedirect("SelectService");
			
		} catch (Exception e) {

		}

	}

}
