<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="all_components/allcss.jsp" %>

<style type="text/css">

.div-color{
 height:500px;
 }
 
 </style>
</head>
<body>
<%@include file="all_components/navbar.jsp" %>
<div class="container-fluid div-color">
     <div class="row">
        <div class="col-md-4 offset-md-4">
           <div class="card point-card mt-5">
                    <div class="card-header  text-center text-white bg-success">
                      <i class="fa fa-user-plus fa-2x aria-hidden="true"></i>
                       <h4>Login Page</h4>
                       </div>
                       
                        <%
                       String invMsg = (String)session.getAttribute("login-failed");
                       if(invMsg != null)
                       
                       {
                    	  %>
                    	   
                   <div class="alert alert-danger text-center" role="alert"><%= invMsg %></div> 	   
                        <%
                        session.removeAttribute("login-failed");    
                       }                      
                        %>
                        <%
                        String withoutLogin = (String)session.getAttribute("Login-error");
                        if(withoutLogin != null){%>
                        
                        <div class="alert alert-danger text-center" role="alert"><%=withoutLogin%></div>
                          <%
                          
                          session.removeAttribute("Login-error");
                        }
                        
                        %>
                        
                        <%                         
                        String lgMsg = (String)session.getAttribute("logoutMsg");
                        if(lgMsg != null){ %>
                        	
                           <div class="alert alert-success text-center" role="alert"><%=lgMsg%></div>	
                        <% 
                        
                        session.removeAttribute("logoutMsg");
                          }
                        %>
                      
                        
                       
                        
                     
                                                  
                        <div class="card-body">           
                    <form action="user_login" method="post">    
                        <div class=" mb-3 form-group">
                            <label class="mb-2">Enter Email</label>
                            <input type="email" name="uemail"  class="form-control" id="exampleInputEmail1"    
                            aria-describedby="emailHelp" placeholder="Email"  required>                          
                        </div>

                        <div class="mb-3 form-group">
                            <label class="mb-2">Password</label>
                            <input type="password" name="upassword" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
                        </div>
                         
                        
                         <div class="text-center">
                          <button type="submit" class="btn bg-success badge-pill btn-block text-white">Login</button>
                          </div>
                    </form>
                    
                </div>
           </div>

        </div>
     </div>
     
</div>


 <%@include file="all_components/footer.jsp" %>
</body>
</html>
