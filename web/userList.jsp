<%@page import="java.util.ArrayList"%>
<%@page import="dto.UserDTO"%>
<%@page import="dto.HospiDTO"%>
<%@page import="dao.AdminDAO"%>
<!-- /*
    (___)
    (o o)_____/
     @@ `     \  
      \ ____, /
      //    //  
     ^^    ^^ */ -->

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Dashboard</title>

    
    <link rel="stylesheet" href="userstyle.css">

<style>

.row {
      margin-bottom: 20px;
    }
       
    .button.button-small {
      height: 30px;
      line-height: 30px;
      padding: 0px 10px;
    }
    
    td input[type=text],
    td select {
      width: 100%;
      height: 30px;
      margin: 0;
      padding: 2px 8px;
    }
    
    th:last-child {
      text-align: right;
    }
    
    td:last-child {
      text-align: right;
    }
    
    td:last-child .button {
      width: 30px;
      height: 30px;
      text-align: center;
      padding: 0px;
      margin-bottom: 0px;
      margin-right: 5px;
      background-color: #FFF;
    }
    
    td:last-child .button .fa {
      line-height: 30px;
      width: 30px;
    }   
    
    a{
   text-decoration: none;
   color:#4caf50;
   font-size: 16px;
}
a:hover{
    text-decoration: underline;
    color:orange;
}


    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"></script>
    
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body style="background-color:white;" >
    

    
    <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: 2px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
                <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 5px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="login.jsp"> &nbsp;USER LOGIN&nbsp; </a> | <a class="a" style="color: white; text-decoration: none;" href="hospiLogin.jsp">&nbsp;HOSPITAL LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="adminLogout">&nbsp;LOGOUT&nbsp; </a> </span>
    </nav>
    </span>
    <span>
        <nav style=" width: 100%; height: auto; padding-top: 2px; padding-bottom: 2px; margin: auto;  background-color: rgb(255, 255, 255);">
            <span style="font-weight: bolder ; font-size: 30px; color: rgb(0, 0, 0); " >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/coronavirus_logo-2-833x321.jpg" width="10%" alt="">  <span></span  ></span>
            
        </nav>
        </span>
        
            <!-- main-footer -->
            <footer class="main-footer">
                <div class="shape-layer" ></div>
                <div class="anim-icon">
                    
                    <div class="icon icon-2 rotate-me" style="background-image: url(images/anim-icon-3.png);"></div>
                    <div class="icon icon-3 rotate-me" style="background-image: url(images/anim-icon-6.png);"></div>
                    <div class="icon icon-4 rotate-me" style="background-image: url(images/anim-icon-6.png); width: 300px; height: 300px;"></div>
                    <div class="icon icon-5 rotate-me" style="background-image: url(images/anim-icon-4.png); "></div>
                    
                    <span>
                    
                <%
     
     
     
     
     
     
     
     
     if(session.getAttribute("username")==null)
            {  
                response.sendRedirect("adminLogin.jsp");
            }
     
     
     
     
     String username=(String)session.getAttribute("username");
     String name = (String) session.getAttribute("name");
     
     session.setAttribute("username", username);
     
     

     
     
     
     
     
     
     
     
     
     
     
     
            
            
           
            
 %>            
                
                        <br><br>
                        <h1 style="text-align: left; font-family: 'Caveat', cursive; margin-left:180px;"><b>Hey <%out.println(name);%> !</b></h1>
                        <br>
                        <fieldset style=" background-color: white; border: 1px solid rgb(255, 0, 0);
                        width: 80%;
                        margin:auto;">

                            
                            
                        <h1 style="color: rgb(1, 1, 77); text-align: center; font-weight: bold; font-size: 40px ; text-decoration: underline; margin-bottom: 2%; margin-top: 2%;">
                            User List 
                        </h1>
                            
                        
                        
                        
                            
    <div class="container">

        <div class="row">
          <div class="col-md-12">
            <br>
            <button class="btn btn-default pull-right add-row"><a href="insertUser.jsp"><i class="fa fa-plus"></i>&nbsp;&nbsp; Insert User </a></button>
          </div>
        </div>
      
                        
                            
                            
                                  
        <div class="row">
          <div class="col-md-12">
              <form action="updateUser">
            <table class="table table-bordered" id="editableTable">
              <thead>
                <tr>
                  <th>S.No.</th>
                  <th>Name</th>
                  <th>DOB</th>
                  <th>Aadhar Number</th>
                  <th>User ID </th>
                  <th>Edit</th>
                </tr>
              </thead>
              <tbody>
              
              <% 

                        AdminDAO admin = new AdminDAO();
                        ArrayList<UserDTO> list = admin.userList();
                        for(int i = 0; i<list.size(); i++)
			{
                            UserDTO udto = list.get(i);
                            %>
                       
                            
                            
              
                  
                <tr data-id="1">
                    
                  <td data-field="birthday"><%out.println(i+1);%></td>
                  <td data-field="name"><%=udto.getName()%></td>
                  <td data-field="name"><%=udto.getDob()%></td>
                  <td data-field="name"><%=udto.getAadharno()%></td>
                  <td data-field="birthday"><%=udto.getId()%></td>
                  
                  <td>
                      
                      
                      <a  href="updateUser.jsp?userid=<%=udto.getUname()%>">
                        <i class="fa fa-user"></i>
                    </a>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a  href="deleteUser?userid=<%=udto.getId()%>">
                        <i class="fa fa-trash"></i> 
                    </a>
                        
                  </td>
                </tr>
                
                                
                
                
                <%
                            }
                            %>
                            
                            
                
              </tbody>
                                                

            </table>
                            </form>
          </div>
        </div>
                            
      </div>
    
   
                        
                        </fieldset>
                        </span>
         
      
      
                        


</body>
</html>




