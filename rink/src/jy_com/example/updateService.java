package jy_com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jy_com.DAO.FileDAO;
import jy_com.DAO.FileVO;
import ym_com.DAO.ym_FileDAO;

@WebServlet("/updateService")
public class updateService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
/*		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String text = request.getParameter("text");
		String date = request.getParameter("date");
		String file = request.getParameter("file");
		
		System.out.println(title);
		System.out.println(name);
		System.out.println(text);
		System.out.println(date);
		System.out.println(file);
		
		try {
			FileDAO dao = new FileDAO();
			
			int cnt = dao.messageUpdate(title, text, date, file, name);
			
			if (cnt > 0) {
				response.sendRedirect("SelectService");
			}
			
		} catch (Exception e) {

		}*/
		
		//request.setCharacterEncoding("euc-kr");
		
		// �������� Form������ üũ.
		boolean isMulti = ServletFileUpload.isMultipartContent(request);
		
		ServletContext context = getServletContext();		// ������ context��� ��ü�� ���� ��.
		String saveDir = context.getRealPath("mupload");
		System.out.print(saveDir);
		HttpSession session = request.getSession();
		//System.out.println("������ : " + saveDir);
		int maxSize = 30*1024*1024;		// 3MB
		String encoding = "euc-kr";
		MultipartRequest multi = null;
		
		if (isMulti) {
			//(request, �����ϰ��� �ϴ� ��ġ(���ϰ��), ���� ������(�뷮), �ѱ�(���ڵ�), �̸��ߺ�������ü)
			multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			System.out.println("�������� form �Դϴ�.");
			FileDAO dao = new FileDAO();
			ArrayList<FileVO> list = (ArrayList<FileVO>) session.getAttribute("set");		
			
			String name = multi.getParameter("name");
			String title = multi.getParameter("title");
			String message = multi.getParameter("message");
			String date = multi.getParameter("date");
			String file = multi.getFilesystemName("file");
			int num = list.get(0).getNum();
			System.out.println(name);
			System.out.println(title);
			System.out.println(message);
			System.out.println(date);
			System.out.println(file);
			System.out.println(num);
			
			try {
				int cnt = dao.messageUpdate(name, title, message, date, file, num);
				String moveUrl = "";
				
				if (cnt > 0) {
					System.out.println("���� �Ϸ�");
					moveUrl = "SelectService";
				}else {
					System.out.println("���� ����");
					moveUrl = "jy/MessageBoard/jy_writing.jsp";
				}
				
				response.sendRedirect(moveUrl);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} else {
			System.out.println("�Ϲ����� form �Դϴ�.");
		}
		
	}

}