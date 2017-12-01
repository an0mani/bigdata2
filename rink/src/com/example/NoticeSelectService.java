package com.example;

import java.io.IOException;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.NoticeDAO;
import com.DAO.NoticeVO;

@WebServlet("/NoticeSelectService")
public class NoticeSelectService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      //DB에 저장된 File정보를 모두 검색해서 jsp로 전송
	  NoticeDAO dao = NoticeDAO.getInstance();
      HttpSession session = request.getSession();
      
           
      ArrayList<NoticeVO> list;
      try {
         list = dao.selectAll();
              
         if(list != null) {
        	 
         session.setAttribute("list", list);
         }
         
         response.sendRedirect("jt/Notice/Notice.jsp");
         
         
      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      
      
   }

}