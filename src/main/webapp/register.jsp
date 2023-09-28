<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="all_components/allcss.jsp" %>

<style type="text/css">
 .point-card {
    border-radius:20px 1opx;
 }
 .div-color{
 height:500px;
 }
 
 </style>
</head>
<body>
<%@include file="all_components/navbar.jsp" %>
<div class="container-fluid div-color p-20">
     <div class="row">
        <div class="col-md-4 offset-md-4">
           <div class="card point-card mt-5">
                    <div class="card-header  text-center text-white bg-success">
                      <i class="fa fa-user-plus fa-2x aria-hidden="true"></i>
                       <h4>Registration</h4>
                       </div>  
                       
                       
                       
                       <%
                       String regMsg = (String)session.getAttribute("reg-success");
                       if(regMsg != null)
                       
                    	   {
                    	  %>
                    	   
                   <div class="alert alert-success" role="alert"><%=regMsg%>  To Login <a href="login.jsp"> Click Here </div> 	   
                        <%
                        session.removeAttribute("reg-success");
                             }
                       
                        %>
                        
                         <%
                       String failMsg = (String)session.getAttribute("failed-msg");
                       if(failMsg != null)
                       
                    	   {
                    	   %>
                    	   
                   <div class="alert alert-danger" role="alert"><%= failMsg %>  </div> 	   
                        <%
                        session.removeAttribute("failed-msg");
                             }
                             %>
                             
                           
                        <div class="card-body">           
                    <form action="user_register" method="post">
                    
                        <div class="mb-3 form-group">
                            <label class="mb-2">Enter Full Name</label>
                            <input type="text"  name="uname" class="form-control" id="exampleInputEmail1"    
                            aria-describedby="emailHelp" placeholder="Full Name"  required>                          
                        </div>

                        <div class=" mb-3 form-group">
                            <label class="mb-2">Enter Email</label>
                            <input type="email" name="uemail" class="form-control" id="exampleInputEmail1"    
                            aria-describedby="emailHelp" placeholder="Email"  required>                          
                        </div>

                        <div class="mb-3 form-group">
                            <label class="mb-2">Password</label>
                            <input type="password"  name="upassword" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
                        </div>
                         
                        
                         <div class="text-center">
                          <button type="submit" class="btn bg-success badge-pill btn-block text-white">Register</button>
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




































































