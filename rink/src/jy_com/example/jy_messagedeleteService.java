package jy_com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jy_com.DAO.FileDAO;
import jy_com.DAO.jy_managerDAO;

@WebServlet("/jy_messagedeleteService")
public class jy_messagedeleteService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
		
		try {
			jy_managerDAO dao = new jy_managerDAO();
			
			int cnt = dao.managerDelete(num);
			
			if (cnt > 0) {
				response.sendRedirect("messageselectService");
			}
			
		} catch (Exception e) {

		}
		
	}

}
