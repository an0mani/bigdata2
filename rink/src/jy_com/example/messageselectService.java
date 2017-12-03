package jy_com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jy_com.DAO.FileDAO;
import jy_com.DAO.FileVO;
import jy_com.DAO.jy_managerDAO;
import jy_com.DAO.jy_managerVO;

@WebServlet("/messageselectService")
public class messageselectService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// DB에 저장된 File정보를 모두 검색해서 jsp로 전송
		HttpSession session = request.getSession();

		String name = (String)session.getAttribute("id");
		System.out.println(name);
		jy_managerDAO dao = jy_managerDAO.getInstance();

		ArrayList<jy_managerVO> list =null;
		
		try {
			list = dao.managerSelect(name);

			if (list != null) {
				session.setAttribute("list", list);
			}

			response.sendRedirect("jy/managerbox/jy_managerboard.jsp");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
