package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.DAO.memberVO;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Login_id");
		String password = request.getParameter("Login_pw");
		
		memberDAO dao = new memberDAO();
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		
		ArrayList<memberVO> list = new ArrayList<memberVO>();
		
		try {
			list = dao.Login(id,password);
			if(list.get(0).getCnt()==0) {//아이디가 없는 경우
				
				response.sendRedirect("jy/firstMain/IdFail.jsp");
				
				
			}else if(list.get(0).getCnt()==1) {//아이디가 있는데 비밀번호가 틀렸을 경우
				
				response.sendRedirect("jy/firstMain/PwFail.jsp");
				
			}else if(list.get(0).getCnt()==2) {//아이디,비밀번호가 다 맞은 경우
				
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("password", password);
				session.setAttribute("Login_name", list.get(0).getBabyName());
				session.setAttribute("Login_sex", list.get(0).getGender());
				session.setAttribute("Login_blood", list.get(0).getBlood());
				session.setAttribute("Login_weight", list.get(0).getWeight());
				session.setAttribute("Login_height", list.get(0).getHeight());
				session.setAttribute("Login_birth", list.get(0).getBirthday());
				
				
				
				
				String bir = (String)session.getAttribute("Login_birth"); 
					String[] birth = bir.split("-");
					
						int year = Integer.parseInt(birth[0]);
						int month = Integer.parseInt(birth[1]);
						
						Calendar cal = Calendar.getInstance();
					    int thisyear = cal.get(Calendar.YEAR) ;
					    int thismonth = cal.get(Calendar.MONTH);
						
					    int months = (thisyear - year)*12 + (thismonth - month);
					    
					    if(months >= 144){
					    	session.setAttribute("vaccin", "Y_TWELVE");
					    }else if (months >= 132){
					    	session.setAttribute("vaccin", "Y_ELEVEN");
					    }else if (months >= 72){
					    	session.setAttribute("vaccin", "Y_SIX");
					    
					    }else if (months >= 48){
					    	session.setAttribute("vaccin", "Y_FOUR");
					    
					    }else if (months >= 36){
					    	session.setAttribute("vaccin", "M_THIRTYSIX");
					    
					    }else if (months >= 24){
					    	
					    	session.setAttribute("vaccin", "M_TWENTYFOUR");
					    }else if (months >= 18){
					    	session.setAttribute("vaccin", "M_EIGHTEEN");
					    
					    }else if (months >= 15){
					    	
					    	session.setAttribute("vaccin", "M_FIFTEEN");
					    }else if (months >= 12){
					    	
					    	session.setAttribute("vaccin", "M_TWELVE");
					    }else if (months >= 6){
					    	
					    	session.setAttribute("vaccin", "M_SIX");
					    }else if (months >= 4){
					    	session.setAttribute("vaccin", "M_FOUR");
					    
					    }else if (months >= 2){
					    	session.setAttribute("vaccin", "M_TWO");
					    
					    }else if (months == 1){
					    	session.setAttribute("vaccin", "M_ONE");
					    }else if (months == 0){
					    	session.setAttribute("vaccin", "M_ZERO");
					    }
					    response.sendRedirect("jy/firstMain/LoginSuccess.jsp");
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
