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
        <title>Hospital Login</title>
            <style>

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
body {
	background-color: #63738a;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	height: 100vh;
}
.center {
	width: 100%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	/* (x, y)  => position */
	-ms-transform: translate(-50%, -50%);
	/* IE 9 */
	-webkit-transform: translate(-50%, -50%);
	/* Chrome, Safari, Opera */
}
table {
	width: 50%;
	margin: 0 auto;
	padding: 2%;

	border-radius: 4px;
	background-color: #f2f3f7;
	min-width: 360px;
	max-width: 420px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	border: 1px solid #58677B;
}
input[type=text], [type=email], [type=password], [type=submit] {
	width: 100%;
	height: 40px;
	padding: 12px;
	border: 1px solid #cccccc;
	border-radius: 3px;
	outline: none;
	font-size: 14px;
	color: #4fa64e;
}
input[type=text] {
	width: 49%;
}
input:hover {
	border-color: #4fa64e;
}
input[type=submit] {
	background-color: #53ac53;
	background: linear-gradient(to bottom, #58b358 0%, #449944 100%);
	color: #ffffff;
	font-weight: 600;
	border: none;
}
input[type=submit]:hover {
	cursor: pointer;
}
::placeholder {
	color: #969fa4;
}
p {
	text-align: center;
	font-size: 14px;
	color: #969fa4;
	margin: 12px 0;
}
input[type="checkbox"] {
	vertical-align: middle;
	height: 14px;
	width: 14px;
	background-color: red;
}
.terms>label {
	font-size: 14px;
	color: #969fa4;
	margin-left: 6px;
}
div {
	margin: 10px 0;
}
a {
	color: #4fa64e;
	text-decoration: none;
}
footer {
	margin-top: 16px;
}
footer>p {
	color: #ffffff;
}
footer>p>a {
	color: #ffffff;
	text-decoration: underline;
}
.dash {

	min-height: 2px;
	height: 2px;
	max-height: 2px;
	width: 100%;
	background-color: #D4D4D4;
}
h1 {
	text-align: center;
	font-weight: 500;
	color: #636363;
	text-align: 31px;
}
.top {
	width: 100%;
	background-color: salmon;
}

    </style>

<link rel="stylesheet" href="userstyle.css">
    </head>
    <body style="background-color: white;">
        
  <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: -12px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
        <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 21px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="login.jsp"> &nbsp;USER LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="adminLogin.jsp">&nbsp;ADMIN LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="hospiRegister.jsp">&nbsp;REGISTER&nbsp; </a> </span>
    </nav>
    </span>
    <span>
        <nav style=" width: 100%; height: auto; padding-top: 2px; padding-bottom: 2px; margin: auto;  background-color: rgb(255, 255, 255);">
            <span style="font-weight: bolder ; font-size: 30px; color: rgb(0, 0, 0); " >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/coronavirus_logo-2-833x321.jpg" width="10%" alt="">  <span></span  ></span>
            
        </nav>
        </span>

    
    
    
    
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




        <!-- main-footer -->
        <footer class="main-footer">
            <div class="shape-layer" style="background-image: url(images/shape-3.png); height: 120%;"></div>
            <div class="anim-icon">
                
                <div class="icon icon-2 rotate-me" style="background-image: url(images/anim-icon-3.png);"></div>
                <div class="icon icon-3 rotate-me" style="background-image: url(images/anim-icon-6.png);"></div>
                <div class="icon icon-4 rotate-me" style="background-image: url(images/anim-icon-6.png); width: 300px; height: 300px;"></div>
                <div class="icon icon-5 rotate-me" style="background-image: url(images/anim-icon-4.png); "></div>

            </div>

        <div class="center" style="margin-top: 50px ;">
            <form action="HospiLoginCheckerServlet" method="post" >

            <table>

                
                <tr>
                    <td style="width: 33.33%;">
                        <div class="dash"></div>
                    </td>
                    <td style="padding: 0 6px;">
                        <h1 style="margin-bottom: 15px;">Login</h1>
                    </td>
                    <td style="width: 33.33%;">
                        <div class="dash"></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <p></p>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="3">
                        <div>
                            <input type="email" placeholder="Email" name="email" autocomplete="on" required>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div>
                            <input placeholder="Password" type="password" name="password" autocomplete="off" required>
                        </div>
                    </td>
                </tr>
                
                
                <tr>
                    <td colspan="3">
                        <div>
                            <input type="submit" value="Sign - In">
                        </div>
                    </td>
                </tr>
            </table>
        </form>
            <footer>
                <p style="color: rgb(6, 1, 54);">Didn't have an account? <a href="hospiRegister.jsp" style="color: rgb(255, 0, 0);">Sign up</a></p>
            </footer>

        </div>
	</div>
		</footer>
    </body>
</html>
