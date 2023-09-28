
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.*" %>
     <%@page import="com.servlet.*" %>
     <%@page import="com.user.*" %>
    <%@page import="com.db.*" %>
    <%@page import="com.db.DBConnect"%>
    <%@page import="java.sql.Connection"%>
      <%@page import="java.sql.Timestamp"%>
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
<title>Show Notes</title>
<%@include file="all_components/allcss.jsp" %>
</head>
<body>
<%@include file="all_components/navbar.jsp" %>

<%
String updateMsg = (String) session.getAttribute("updateMsg");
if(updateMsg != null){%>
<div class="alert alert-success text-center" role="alert"><%=updateMsg %></div>		
<%	
session.removeAttribute("updateMsg");
}
%>


<%
String wrongMsg = (String) session.getAttribute("wrongMsg");
if(wrongMsg != null){%>
<div class="alert alert-danger text-center" role="alert"><%=wrongMsg %></div>		
<%	
session.removeAttribute("updateMsg");
}
%>




<div class="container">
   <h2 class="text-center">All Notes:</h2>
   
   <%-- 
    <div class="card mt-3">
                 <img alt="" src="img/img_2.jpg" class="card-img-top mt-2 mx-auto" style="max-width:100px;">
                 <div class="card-body p-4">
                 
                     <h5 class="card-title">What is java?</h5>
                     <p>Java is an Object Oriented Programming Language</p>
                 
                      <p>
                        <b class="text-success">Published By: Ugwu Casmir</b><br>
                        <b class="text-primary"></b>                                            
                      </p>
                      
                      <p>
                        <b class="text-success">Published Date: </b><br>
                        <b class="text-primary"></b>                                            
                      </p>
                      
                      <div class="container text-center mt-2">
                      <a href="" class="btn btn-danger">Delete</a>
                      <a href="" class="btn btn-primary">Edit</a>
                                   
                      </div>
                      
                    
                 </div>
              
              
              </div>       
           --%>  	    	
      
      <div class="row">
          <div class="col-md-12">         
                 <%
                  if(user3 != null){
                	PostDao ob = new PostDao(DBConnect.getConn());
                	List<Post> post = ob.getData(user3.getId());
                	    for(Post po:post){
                	    	%>	
                	    	
                	    	
                	    	<div class="card mt-3">
                 <img alt="" src="img/img_2.jpg" class="card-img-top mt-2 mx-auto" style="max-width:100px;">
                 <div class="card-body p-4">
                 
                     <h5 class="card-title"><%=po.getTitle()%></h5>
                     <p><%=po.getContent()%></p>
                 
                      <p>
                        <b class="text-success">Published By: <%=user3.getName()%></b><br>
                        <b class="text-primary"> </b>                                            
                      </p>
                      
                      <p>
                        <b class="text-success">Published Date: <%=po.getpDate()%></b><br>
                        <b class="text-primary"></b>                                            
                      </p>
                      
                      <div class="container text-center mt-2">
                      <a href="deleteServlet?note_id=<%=po.getId() %>" class="btn btn-danger">Delete</a>
                      <a href="edit.jsp?note_id=<%=po.getId() %>" class="btn btn-primary">Edit</a>
                                   
                      </div>
                      
                    
                 </div>
              
              
              </div>       
                	    	
                	   
                	     <%  } 
                	  
                  } 
                 
                 %>                                                 
          </div>                  
      </div>
</div>

</body>
</html>















































































































