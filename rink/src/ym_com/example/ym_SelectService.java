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

import ym_com.DAO.ym_FileDAO;
import ym_com.DAO.ym_FileVO;
@WebServlet("/ym_SelectService")
public class ym_SelectService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//DB에 저장된 File정보를 모두 검색해서 jsp로 전송
		ym_FileDAO dao = ym_FileDAO.getInstance();
		HttpSession session = request.getSession();

				
		ArrayList<ym_FileVO> list;
		try {
			
			list = dao.selectAll();
			
			if(list != null) {
			session.setAttribute("list", list);
			}

			response.sendRedirect("jy/usedArticle/ym_messageboard.jsp");
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
