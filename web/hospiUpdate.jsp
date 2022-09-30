<%@page import="dto.HospiDTO"%>
<%@page import="dao.HospiDAO"%>
<!-- /*
    (___)
    (o o)_____/
     @@ `     \  
      \ ____, /
      //    //  
     ^^    ^^ */ -->

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update User</title>
        <link rel="stylesheet" href="userstyle.css">
        
        
                <style>
            .login {
  width: 400px;
  margin: 16px auto;
  font-size: 16px;
}

/* Reset top and bottom margins from certain elements */
.login-header,
.login p {
  margin-top: 0;
  margin-bottom: 0;
}

/* The triangle form is achieved by a CSS hack */
.login-triangle {
  width: 0;
  margin-right: auto;
  margin-left: auto;
  border: 12px solid transparent;
  border-bottom-color: #28d;
}

.login-header {
  background: #28d;
  padding: 20px;
  font-size: 1.4em;
  font-weight: normal;
  text-align: center;
  text-transform: uppercase;
  color: #fff;
}

.login-container {
  background: #ebebeb;
  padding: 12px;
}

/* Every row inside .login-container is defined with p tags */
.login p {
  padding: 12px;
}

.login input {
  box-sizing: border-box;
  display: block;
  width: 100%;
  border-width: 1px;
  border-style: solid;
  padding: 16px;
  outline: 0;
  font-family: inherit;
  font-size: 0.95em;
}

.login input[type="email"],
.login input[type="password"] {
  background: #fff;
  border-color: #bbb;
  color: #555;
}

/* Text fields' focus effect */
.login input[type="email"]:focus,
.login input[type="password"]:focus {
  border-color: #888;
}

.login input[type="submit"] {
  background: #28d;
  border-color: transparent;
  color: #fff;
  cursor: pointer;
}

.login input[type="submit"]:hover {
  background: #17c;
}

/* Buttons' focus effect */
.login input[type="submit"]:focus {
  border-color: #05a;
}
        </style>
        
        
    </head>
    
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    
    
    <body style="background-color:white;" >
    

    
    <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: -12px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
                <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 24px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="login.jsp"> &nbsp;USER LOGIN&nbsp; </a> | <a class="a" style="color: white; text-decoration: none;" href="hospiLogin.jsp">&nbsp;HOSPITAL LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="adminLogout">&nbsp;LOGOUT&nbsp; </a> </span>
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
     session.setAttribute("username", username);
     
     
     
     
     
    

String Hmail = request.getParameter("userid") ;


//Integer dose = (Integer)session.getAttribute("dose");
String name = null;
String state = null;
String district = null;

session.setAttribute("username", username);
session.setAttribute("Hmail", Hmail);

HospiDAO hdao = new HospiDAO();
HospiDTO hdto = hdao.getHospiDetails(Hmail);
     
     
     
     
     
     
            
            
           
            
 %>  
 
 
 


            
            
                                <div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">Edit Hospital</h2>

  <form class="login-container" action="UpdateHospiServlet" method="post"><br>
      <label style="">Enter Hospital Name:</label>
      <p><input style="height: 30px;" type="text" name="Name" value="<%=hdto.getHname()%>" placeholder="Enter New Name" required="on"></p><br>
      <label style="">Select State:</label>
      <p><select name ="State" class="form-control" id="inputState" style="height: 30px; box-sizing: border-box;
  display: block;
  width: 100%;
  border-width: 1px;
  border-style: solid;
  
  outline: 0;
  
  font-size: 0.95em;">
                        <option value="SelectState">Select State</option>
                        <option value="Andra Pradesh">Andra Pradesh</option>
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                       
          </select></p><br>
      
      <label style="">Select District:</label>
      <p><select name="District" class="form-control" id="inputDistrict"  style="height: 30px; box-sizing: border-box;
  display: block;
  width: 100%;
  border-width: 1px;
  border-style: solid;
  
  outline: 0;
  
  font-size: 0.95em;">
                        <option  value="">-- select one -- </option>
          </select></p>
      
      
    <p><input type="submit" value="Update"></p>
  </form>
</div>
            
            
            
    
 
 
            <script>
    var AndraPradesh = ["Anantapur", "Chittoor"];
    var ArunachalPradesh = ["Anjaw", "Changlang"];
    var Assam = ["Baksa", "Barpeta"];
    var Bihar = ["Araria", "Arwal"];
    var Chhattisgarh = ["Balod", "Baloda Bazar"];
    
    $("#inputState").change(function () {
      var StateSelected = $(this).val();
      var optionsList;
      var htmlString = "";
    
      switch (StateSelected) {
        case "Andra Pradesh":
          optionsList = AndraPradesh;
          break;
        case "Arunachal Pradesh":
          optionsList = ArunachalPradesh;
          break;
        case "Assam":
          optionsList = Assam;
          break;
        case "Bihar":
          optionsList = Bihar;
          break;
        case "Chhattisgarh":
          optionsList = Chhattisgarh;
          break;
      }
    
      for (var i = 0; i < optionsList.length; i++) {
        htmlString =
          htmlString +
          "<option value='" +
          optionsList[i] +
          "'>" +
          optionsList[i] +
          "</option>";
      }
      $("#inputDistrict").html(htmlString);
    });
    </script>
 
    </body>
</html>
