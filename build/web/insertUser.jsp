<!-- /*
    (___)
    (o o)_____/
     @@ `     \  
      \ ____, /
      //    //  
     ^^    ^^ */ -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" href="userstyle.css">

    <style>
        
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
  -moz-font-smoothing: antialiased;
  -o-font-smoothing: antialiased;
  font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
}

body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: 100;
  font-size: 12px;
  line-height: 30px;
  color: #777;
  background: #4caf50;
}

.container {
  max-width: 400px;
  width: 100%;
  margin: 0 auto;
  position: relative;
}

#contact input[type="text"],
#contact input[type="email"],
#contact input[type="password"],
#contact input[type="url"],
#contact textarea,
#contact button[type="submit"] {
  font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
}

#contact {
  background: #f9f9f9;
  padding: 25px;
  margin: 105px 0;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

#contact h3 {
  display: block;
  font-size: 30px;
  font-weight: 300;
  margin-bottom: 10px;
}

#contact h4 {
  margin: 5px 0 15px;
  display: block;
  font-size: 13px;
  font-weight: 400;
}

fieldset {
  border: medium none !important;
  margin: 0 0 10px;
  min-width: 100%;
  padding: 0;
  width: 100%;
}

#contact input[type="text"],
#contact input[type="email"],
#contact input[type="password"],
#contact input[type="url"],
#contact textarea {
  width: 100%;
  border: 1px solid #ccc;
  background: #fff;
  margin: 0 0 5px;
  padding: 10px;
}

#contact input[type="text"]:hover,
#contact input[type="email"]:hover,
#contact input[type="password"]:hover,
#contact input[type="url"]:hover,
#contact textarea:hover {
  -webkit-transition: border-color 0.3s ease-in-out;
  -moz-transition: border-color 0.3s ease-in-out;
  transition: border-color 0.3s ease-in-out;
  border: 1px solid #aaa;
}

#contact textarea {
  height: 100px;
  max-width: 100%;
  resize: none;
}

#contact button[type="submit"] {
  cursor: pointer;
  width: 100%;
  border: none;
  background: #4caf50;
  color: #fff;
  margin: 0 0 5px;
  padding: 10px;
  font-size: 15px;
}

#contact button[type="submit"]:hover {
  background: #43a047;
  -webkit-transition: background 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out;
  transition: background-color 0.3s ease-in-out;
}

#contact button[type="submit"]:active {
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

.copyright {
  text-align: center;
}

#contact input:focus,
#contact textarea:focus {
  outline: 0;
  border: 1px solid #aaa;
}

::-webkit-input-placeholder {
  color: #888;
}

:-moz-placeholder {
  color: #888;
}

::-moz-placeholder {
  color: #888;
}

:-ms-input-placeholder {
  color: #888;
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
</head>


<body>
    
    <nav style="  width: 100%; height: 60px; padding-top: 10px; padding-bottom: 10px; margin: auto;  background-color: rgb(7, 17, 63); ">
        <span s> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: -14px;font-size: 16px; font-weight: 400; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
        <span style=" padding-top:9px;float: right; color: #ffffff; padding-right: 150px; font-size: 15px; font-family: Helvetica ; position: relative; top:12px;">&nbsp;&nbsp;<a  href="home/home.html">HOME</a>&nbsp;&nbsp; | &nbsp;&nbsp; <a  href="login.jsp"> USER LOGIN </a>&nbsp;&nbsp; | &nbsp;&nbsp; <a   href="hospiLogin.jsp"> HOSPITAL LOGIN  </a>&nbsp;&nbsp; | &nbsp;&nbsp; <a   href="adminLogout">LOG OUT</a> &nbsp;&nbsp;</span>
    </nav>
    </span>
    <span>
        <nav style=" width: 100%; height: auto; padding-top: 2px; padding-bottom: 2px; margin: auto;  background-color: rgb(255, 255, 255);">
            <span style="font-weight: bolder ; font-size: 30px; color: rgb(0, 0, 0); " >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/coronavirus_logo-2-833x321.jpg" width="10%" alt="">  <span></span  ></span>
            
        </nav>
        </span>
    
        

        <!-- main-footer -->
        <footer class="main-footer">
            <div class="shape-layer" style="background-image: url(images/shape-3.png); height: 120%;"></div>
            <div class="anim-icon">
                
                <div class="icon icon-2 rotate-me" style="background-image: url(images/anim-icon-3.png);"></div>
                <div class="icon icon-3 rotate-me" style="background-image: url(images/anim-icon-6.png);"></div>
                <div class="icon icon-4 rotate-me" style="background-image: url(images/anim-icon-6.png); width: 300px; height: 300px;"></div>
                <div class="icon icon-5 rotate-me" style="background-image: url(images/anim-icon-4.png); "></div>

            </div>
            
           
            
            <%
     String b = (String)request.getAttribute("message");
      if(b!=null)
      {
          %>
      
     <script>        
{
  alert("Invalid username or password");
}
</script>
<%
 }       
%>
            
            
            <%
                
if(session.getAttribute("username")==null)
            {  
                response.sendRedirect("adminLogin.jsp");
            }

String username = (String)session.getAttribute("username");
session.setAttribute("username",username);

            
            %>
            
            <div class="container">
  <form id="contact" action="InsertUserServlet" method="post" >
      <h3><b><center>Insert User</center></b></h3>
    
    <fieldset>
      <input name="name" placeholder="Full Name" type="text" tabindex="1" required autofocus>
    </fieldset>
    <fieldset>
      <input name="username1" placeholder="Username / Email" type="email" tabindex="2" required>
    </fieldset>
    <fieldset>
        <input  name="aadharno" placeholder="Aadhar No." type="text" tabindex="3" required>
    </fieldset>
    <fieldset>
        <input  name="password" placeholder="Password .." type="password" tabindex="4" required>
    </fieldset>
    <fieldset>
        <input name="conpass" placeholder="Confirm Password .." type="password" tabindex="5" required>
    </fieldset>
    
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Insert</button>
    </fieldset>
    
  </form>
</div>
            
    </body>
</html>
