<%@page import="com.user.UserDetails"%> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-success navbar-custom">
 <div class="container-fluid">
    <a class="navbar-brand ml-4" href=""><i class="fa fa-book" aria-hidden="true"></i> E-Notes</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto">
        
        <li class="nav-item active">
          <a class="nav-link" href="home.jsp"><i class="fa fa-home"></i> Home</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link" href="addNotes.jsp"><i class="fa fa-plus-circle"></i>Add Note</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link" href="showNotes.jsp"><i class="fa fa-address-book" aria-hidden="true"></i> Show Notes</a>
        </li>
        
        </ul>
        
       
        
        <%
        UserDetails user = (UserDetails)session.getAttribute("userD");
        
           if(user != null)
       {
        
        %>
        <div>
        <a  href="" class="btn btn-light my-2 my-sm-0 mr-2" type="submit" data-bs-toggle="modal" data-bs-target="#exampleModal">
        <i class="fa fa-user-circle" aria-hidden="true"></i> <%=user.getName()%></a>
        
        <a  href="LogoutServlet" class="btn btn-light my-2 my-sm-0 " type="submit">
        <i class="fas fa-sign-in-alt]" aria-hidden="true"></i> Logout</a>  
         </div>
   
   
   <%-- Logout modal --%>


<%--End Logout modal --%>
 
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">User Profile</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
            <i class="fa fa-user fa-3x"></i>
            <h5></h5>
               <table class="table">
                     <tbody>
                     <tr>
                       <th>User Id </th>
                       <td><%= user.getId()%></td>                     
                     </tr>
                     
                     <tr>
                       <th>Full Name</th>
                       <td><%= user.getName()%></td>                      
                     </tr>
                      <tr>
                       <th>Email Id</th>
                       <td><%= user.getEmail()%></td>                      
                     </tr>
                  </tbody>               
               </table>   
   </div>            
      </div>
      <div class="text-center mb-3">
        <button type="button" class="btn bg-success text-white" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>     
         <!-- Modal -->
      <%-- 
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <div class="container text-center">
            <i class="fa fa-user fa-3x"></i>
            <h5></h5>
               <table class="table">
                     <tbody>
                     <tr>
                       <th>User Id </th>
                       <td><%= user.getId()%></td>                     
                     </tr>
                     
                     <tr>
                       <th>Full Name</th>
                       <td><%= user.getName()%></td>                      
                     </tr>
                      <tr>
                       <th>Email Id</th>
                       <td><%= user.getEmail()%></td>                      
                     </tr>
                  </tbody>               
               </table>   
   </div>            
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

  --%>     
        
        
        
        
        
        
        
         
             
         <%
         }
           
           else{
         %>  
         <div>
        	 <a  href="login.jsp" class="btn btn-light my-4 my-sm-0 mr-2" type="submit"><i class="fa fa-user-circle" aria-hidden="true"></i> Login</a>
        	 
        	 
             <a  href="register.jsp" class="btn btn-light ml-1 my-2 my-sm-0" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
        	   </div>
        	 
        	<%
        	}
           %>   
           
         
        
       </div>

   </div>
</nav>


 


























