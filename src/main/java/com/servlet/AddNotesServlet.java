package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
import com.dao.PostDao;

import com.db.DBConnect;
//import com.user.Post;


@WebServlet("/addNotesServlet")
public class AddNotesServlet extends HttpServlet{

	
	private static final long serialVersionUID = 8420484256658560997L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          int uid = Integer.parseInt(req.getParameter("uid"));
          String title = req.getParameter("title");
          String content = req.getParameter("content");
            
          
          PostDao dao = new  PostDao(DBConnect.getConn());
          boolean f = dao.addNotes(title, content, uid);
			
			if(f) {
				
				System.out.println("data inserted successfully");
				resp.sendRedirect("showNotes.jsp");
			}
			else {
				
				System.out.println("data not  inserted");
			}   
		   
	}	

}















































































