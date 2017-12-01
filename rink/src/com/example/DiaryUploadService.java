package com.example;

import java.io.IOException;


import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.DAO.DiaryDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
@WebServlet("/DiaryUploadService")
public class DiaryUploadService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isMulti = ServletFileUpload.isMultipartContent(request);


		ServletContext context = getServletContext(); 
		String saveDir = context.getRealPath("dupload");
		int maxSize = 30 * 1024 * 1024;	//3MB
		String encoding ="euc-kr";

		System.out.println("������ >> " + saveDir);
		MultipartRequest multi = null;

		if(isMulti) {
			multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			DiaryDAO dao = DiaryDAO.getInstance();

			String id = multi.getParameter("id");
			String title = multi.getParameter("title");
			String text = multi.getParameter("message");
			String date = multi.getParameter("date");
			String file = multi.getFilesystemName("file");
			System.out.println(id);
			System.out.println(title);
			System.out.println(text);
			System.out.println(date);
			System.out.println(file);

			try {
				int cnt = dao.uploadFile(id, title, text, date, file);
				String moveUrl ="";

				if(cnt > 0) {
					System.out.println("����Ϸ�");
					moveUrl ="DiarySelectService";
				}else {
					System.out.println("�������");
					moveUrl ="jy/Diary/Diary.jsp";
				}

				response.sendRedirect(moveUrl);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			System.out.println("�������� Form�Դϴ�.");
		}else {
			System.out.println("�Ϲ����� Form�Դϴ�.");
		}
	}
}

