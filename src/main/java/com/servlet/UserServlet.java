package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.user.UserDetails;


@WebServlet("/user_register")
public class UserServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String fullName = req.getParameter("uname");
			String email = req.getParameter("uemail");
			String password = req.getParameter("upassword");
			
			UserDetails u = new  UserDetails();
			u.setEmail(email);
			u.setName(fullName);
			u.setPassword(password);
			
			UserDao dao = new UserDao(DBConnect.getConn());
			
			 boolean b = dao.addUser(u);
			 
			 HttpSession session;
			
		   
		    
		    if (b) {
		    	session =  req.getSession();
		    	session.setAttribute("reg-success", "Registered Successfully");
		    	resp.sendRedirect("register.jsp");
			}
		    
		    else {
		    	session =  req.getSession();
		    	session.setAttribute("failed-msg", "Something went wrong on server");
		    	resp.sendRedirect("register.jsp");
		}
	}
		catch (Exception e) {
			e.printStackTrace();
		}
	
	
        }
	

}














