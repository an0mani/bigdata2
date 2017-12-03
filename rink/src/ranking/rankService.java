package ranking;

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
@WebServlet("/rankService")
public class rankService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		rankDAO dao = rankDAO.getInstance();
		
		HttpSession session = request.getSession();
		String area = request.getParameter("area");
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("text/html;euc-kr");
		session.setAttribute("selectArea", area);
		ArrayList<rankVO> list;
		try {
			
			list = dao.SelectOne(area);
			
			if(list != null) {
			session.setAttribute("rank", list);
			}

			response.sendRedirect("jy/DaycareCenter/jy_DaycareCenter.jsp");
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
