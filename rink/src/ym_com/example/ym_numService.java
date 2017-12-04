package ym_com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jy_com.DAO.FileDAO;
import jy_com.DAO.FileVO;
import ym_com.DAO.ym_FileDAO;
import ym_com.DAO.ym_FileVO;

@WebServlet("/ym_numService")
public class ym_numService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		ym_FileDAO dao = new ym_FileDAO();
		
		ArrayList<ym_FileVO> list = new ArrayList<>();
		
		try {
			list = dao.SelectOne(num,id);
			
			if (list != null) {
				session.setAttribute("set", list);
			}
				response.sendRedirect("jy/usedArticle/ym_writing.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
