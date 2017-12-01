package com.example;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.DAO.NoticeDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
@WebServlet("/NoticeUploadService")
public class NoticeUploadService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isMulti = ServletFileUpload.isMultipartContent(request);
		
		ServletContext context = getServletContext();
		String saveDir = context.getRealPath("dupload");
		int maxSize = 3 * 1024 * 1024; //3MB
		String encoding = "euc-kr";
		
		System.out.println("절대경로 >> " + saveDir);
		MultipartRequest multi = null;
		
		if(isMulti) {
			multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			NoticeDAO dao = NoticeDAO.getInstance();
			
			String title = multi.getParameter("title");
			String text = multi.getParameter("message");
			
			try {
				int cnt = dao.uploadFile(title, text);
				String moveUrl ="";
				
				if(cnt > 0) {
					System.out.println("저장완료");
					moveUrl ="NoticeSelectService";
				}else {
					System.out.println("저장실패");
					moveUrl ="jy/Notice/Notice.jsp"; 
				}
				
				response.sendRedirect(moveUrl);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			System.out.println("파일전송 Form입니다.");
		}else {
			System.out.println("일반전송 Form입니다.");
		}
	}

}
