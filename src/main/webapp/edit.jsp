
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.*" %>
     <%@page import="com.servlet.*" %>
     <%@page import="com.user.*" %>
    <%@page import="com.db.*" %>
    <%@page import="com.db.DBConnect"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="java.util.*"%>
    
 <% 
    UserDetails user3 = (UserDetails)session.getAttribute("userD");
    
    if(user3 == null){
    	
    	response.sendRedirect("login.jsp");
    	session.setAttribute("Login-error", "Please Login...");
    }
    
    
    
    %>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<%@include file="all_components/allcss.jsp" %>
</head>
<body>
<%

 int noteid = Integer.parseInt(request.getParameter("note_id"));
 PostDao post = new PostDao(DBConnect.getConn());
 Post p = post.getDataById(noteid);

%>

<div class="container-fluid">
<%@include file="all_components/navbar.jsp" %>
   <h1 class="text-center">Edit Your Notes:</h1>
     <div class="container"> 
      <div class="row">
          <div class="col-md-12">
          
          <form action="editNoteServlet" method="post">
          <input type="hidden" value="<%=noteid %>" name="noteid">
          
          <div class="form-group">
            <label class="mb-2">Enter Title</label>
         <input type="text" class="form-control"  value="<%=p.getTitle() %>" id="exampleInputEmail1" name="title" required="required">
     </div>
        <br>
  
         <div class="form-group">
            <label class="mb-2">Enter Content</label>
            <textarea rows="10" cols="" name="content" class="form-control" required="required">
             <%=p.getContent() %>
            </textarea>
        </div>
           <br>
          <div class="container text-center">
           
          <button type="submit" class="btn bg-success text-white">Update Notes</button>
         </div>
                    
              </div>
               
                      </div>
                                          
                 </div>
                           
              </div>  
              </form>                                             
          </div>                  
      </div>
      </div>     
</div>

</body>
</html>















































































































