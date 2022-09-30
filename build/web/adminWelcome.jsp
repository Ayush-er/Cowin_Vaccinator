
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

<link href="https://fonts.googleapis.com/css?family=Tourney" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/hover.css/2.0.2/css/hover.css">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="userstyle.css">
    <style> 
    
        
.nav__link {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    flex-grow: 1;
    min-width: 50px;
    overflow: hidden;
    white-space: nowrap;
    font-family: sans-serif;
    font-size: 15px;
    color: #288afa;
    text-decoration: none;
    -webkit-tap-highlight-color: transparent;
    transition: background-color 0.1s ease-in-out;
}

.nav__link:hover {
    background-color: #fcfdc5;
    color: #4a5af1;
}
.nav__link:active
{
 color:black;
 font-weight: bold;
}

.nav__icon {
    font-size: 25px;
}



/*DEMO ONLY*/

.service-categories {
  padding-top: 3em;
  padding-bottom: 3em;
  background-size: cover;
}

/*DEMO ONLY*/

.service-categories .card {
  transition: all 0.3s;
}

.service-categories .card-title {
  padding-top: 0.5em;
}

.service-categories a:hover {
  text-decoration: none;
}

.service-card {
  background: #18476f;
  border: 0;
  width: ;
  border-radius: 6px;
}

.service-card:hover {
  background: #f33d30;
  box-shadow: 2px 10px 15px 0px rgba(46, 61, 73, 1);
  
  
}

.fa {
  color: white;
}
.borderstyle{
    background-color: white;
    border: 5px solid red; 
    width: 80%;
    margin:auto;
    border-radius: 8px;
}
.borderstyle:hover{
    border: 5px solid blue;
}




        
    </style>
</head>
<body style="background-color:white;" >
    

    
    <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: 2px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
                <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 4px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="login.jsp"> &nbsp;USER LOGIN&nbsp; </a> | <a class="a" style="color: white; text-decoration: none;" href="hospiLogin.jsp">&nbsp;HOSPITAL LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="adminLogout">&nbsp;LOGOUT&nbsp; </a> </span>
    </nav>
    
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
     
     AdminDAO admin = new AdminDAO();
     String name = admin.adminDetails(username);
     
     session.setAttribute("name", name);
     
     
     
     
     
     
     
     
     
            
            
           
            
 %>            
                
                        <br><br>
                        <fieldset  class="borderstyle" >

                        <h1 style="color: #f33d30; text-align: center; font-weight: bold; font-size: 30px ; text-decoration: underline; margin-top: 5%;">
                            Welcome <%out.println(name);%> !
                        </h1>

                        
                       
                        
                        
                        
                        <section class="service-categories text-xs-center">
  <div class="container" >
    <div class="row">

        
        <div class="col-md-3" style="margin-left:22%; margin-bottom: 5%;">
        <a href="insertUser.jsp">
          <div class="card service-card card-inverse" >
              <div class="card-block" >
              <span class="fa fa-user fa-3x"></br>
              <h4 class="card-title">Insert User</h4>
            </div>
          </div>
        </a>
      </div>
        <div class="col-md-3" style="margin-left: 6%; margin-right: 22%; margin-bottom: 5%; ">
        <a href="userList.jsp">
          <div class="card service-card card-inverse">
            <div class="card-block">
              <span class="fa fa-users fa-3x"></span>
              <h4 class="card-title">User List</h4>
            </div>
          </div>
        </a>
      </div>
      
      
      
      <div class="col-md-3" style="margin-left:22%;">
        <a href="insertHospi.jsp">
          <div class="card service-card card-inverse">
            <div class="card-block">
              <span class="fa fa-hospital-o fa-3x"></span>
              <h4 class="card-title"> Insert Hospital</h4>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-3" style="margin-left: 6%; margin-right: 22%;">
        <a href="hospiList.jsp">
          <div class="card service-card card-inverse">
            <div class="card-block">
              <span class="fa fa-hospital-o fa-3x"></span>
              <h4 class="card-title">Hospital List</h4>
            </div>
          </div>
        </a>
      </div>
      


      
      
      
    <!--End Row-->

  </div>
</section>

                        
                        
                        
                        
                        
                        </fieldset>
                        </span>

</body>
</html>



