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

@WebServlet("/deleteServlet")
public class DeleteServlet extends HttpServlet{
	
	private static final long serialVersionUID = 5396849776893406312L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       try {
			
			int noteId = Integer.parseInt(req.getParameter("note_id"));
			
			PostDao dao = new PostDao(DBConnect.getConn());
			boolean f = dao.deleteNotes(noteId);
			
			HttpSession session = null;
			
			if(f) {
				session =  req.getSession();
				session.setAttribute("updateMsg", "Note Deleted Successfully...");
				resp.sendRedirect("showNotes.jsp");	
			}
			
			else {
				session =  req.getSession();
				session.setAttribute("wrongMsg", "Something went wrong on Server...");
				resp.sendRedirect("showNotes.jsp");	
			}	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	}



































































