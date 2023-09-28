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

@WebServlet("/user_login")
public class LoginServlet extends HttpServlet{
	
private static final long serialVersionUID = 1L;
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
try {
			
			String email = req.getParameter("uemail");
			String password = req.getParameter("upassword");
			
			UserDetails u = new  UserDetails();
			u.setEmail(email);
			u.setPassword(password);
			
			UserDao dao = new UserDao(DBConnect.getConn());
			UserDetails user = dao.loginUser(u);
			
			if(user != null) {
				
			HttpSession session = req.getSession();
			session.setAttribute("userD", user);
				resp.sendRedirect("home.jsp");
			}
			else {
				HttpSession session = req.getSession();
				session.setAttribute("login-failed", "Invalid Username and Password");
				resp.sendRedirect("login.jsp");
				
				
			}
				  
	}
		catch (Exception e) {
			e.printStackTrace();
		}
	
	
        }
	

	
        }





















