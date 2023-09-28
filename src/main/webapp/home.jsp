<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <% 
    UserDetails user2 = (UserDetails)session.getAttribute("userD");
    
    if(user2 == null){
    	
    	response.sendRedirect("login.jsp");
    	session.setAttribute("Login-error", "Please Login...");
    }
    
    
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_components/allcss.jsp" %>
</head>
<body>
<%@include file="all_components/navbar.jsp" %>

 <div class="card mt-3 py-5">
      <div class="card-body text-center"> 
         <img alt="" src="img/img_2.jpg" class="img-fluid mx-auto" style="max-width: 300px;">
         <h1>START TAKING YOUR NOTES</h1>
         <a  href="addNotes.jsp" class="btn btn-outline-success mt-4">Click Here To Start</a>
      </div>
 
 
   </div>
 
<%@include file="all_components/footer.jsp" %>
</body>
</html>






























