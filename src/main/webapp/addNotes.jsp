<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     <% 
    UserDetails user1 = (UserDetails)session.getAttribute("userD");
    
    if(user1 == null){
    	
    	response.sendRedirect("login.jsp");
    	session.setAttribute("Login-error", "Please Login...");
    }
    
    
    
    %>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_components/allcss.jsp" %>
</head>
<body>
<div class="container-fluid">
<%@include file="all_components/navbar.jsp" %>
   <h1 class="text-center">Add Your Notes</h1>
  <div class="container">
  
  <div class="row">
      <div class="col-md-12">
      <form action="addNotesServlet" method="post">
    <div class="form-group">
   
    <% 
    UserDetails us = (UserDetails)session.getAttribute("userD");
    
    if(user1 != null)
    {%>
    	
     <input type="hidden" value="<%=us.getId()%>" name="uid">	
     <% 	
    }
    %>
  
   
    
    
         <label class="mb-2">Enter Title</label>
         <input type="text" class="form-control" id="exampleInputEmail1" name="title" required="required">
     </div>
        <br>
  
         <div class="form-group">
            <label class="mb-2">Enter Content</label>
            <textarea rows="10" cols="" name="content" class="form-control" required="required"></textarea>
        </div>
           <br>
          <div class="container text-center">
           
  <button type="submit" class="btn bg-success text-white">Add Notes</button>
         </div>
</form>
      
      </div> 
  </div>




</div>
  </div>
  
  <%@include file="all_components/footer.jsp" %>
</body>
</html>







































