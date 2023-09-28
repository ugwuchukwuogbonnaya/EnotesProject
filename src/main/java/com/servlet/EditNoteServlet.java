package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.PostDao;
import com.db.DBConnect;

@WebServlet("/editNoteServlet")
public class EditNoteServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int noteId = Integer.parseInt(req.getParameter("noteid"));
        String title = req.getParameter("title");
        String content = req.getParameter("content");
          
        
        PostDao dao = new  PostDao(DBConnect.getConn());
        boolean f = dao.postUpdate(noteId, title, content);
			
			if(f) {
				
				System.out.println("data updated successfully");
				HttpSession session = req.getSession();
				session.setAttribute("updateMsg", "Note Updated Successfully");
				resp.sendRedirect("showNotes.jsp");
			}
			else {
				
				System.out.println("data not  updated");
			}   
		
	}
	
	

}




























































