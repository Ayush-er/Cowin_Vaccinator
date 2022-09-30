<!-- /*
    (___)
    (o o)_____/
     @@ `     \  
      \ ____, /
      //    //  
     ^^    ^^ */ -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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


<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>



<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Registration</title>

    <link rel="stylesheet" href="userstyle.css">


</head>

<body style="background-color: white; ">

  <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: -12px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
        <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 21px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="login.jsp"> &nbsp;USER LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="adminLogin.jsp">&nbsp;ADMIN LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="hospiLogin.jsp">&nbsp;LOGIN&nbsp; </a> </span>
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


        <div class="center" style="margin-top: 100px ;">
            <form action="HospiRegisterCheckerServlet" method="post">
            <table>
                <tr>
                    <td style="width: 33.33%;">
                        <div class="dash"></div>
                    </td>
                    <td style="padding: 0 6px;">
                        <h1 style="margin-bottom: 15px;">Register</h1>
                    </td>
                    <td style="width: 33.33%;">
                        <div class="dash"></div>
                    </td>
                </tr>
                
                    <td colspan="3">
                        <div>
                            <input name="name"  placeholder="Hospital Name" type="text"> 
                            <span>
                                <input name="pin" placeholder="Pincode" style="float: right;padding-top:10px; padding-left:5px;padding-bottom:10px" type="number">
                            </span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div>
                            <input name="username1" type="email" placeholder="Email">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div>
                            <input name="password" placeholder="Password" type="password">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div>
                            <input name="conpass" placeholder="Confirm Password" type="password">
                        </div>
                    </td>
                </tr>

                
                <tr>
                    <td colspan="3">
                        
                        
                        
    
                        <select name ="state" class="form-control" id="inputState" style="width:45%; height: 40px;">
                        <option value="SelectState">Select State</option>
                        <option value="Andra Pradesh">Andra Pradesh</option>
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                       
                      </select>
  
                    
    <select name="district" class="form-control" id="inputDistrict"  style="width:45%; height: 40px; float: right;">
        <option  value="">-- select one -- </option>
    </select>
  
                        
                        
                    </td>
                </tr>

                <td colspan="3">
                    <div>
                        <input type="submit" value="Register Now">
                    </div>
                </td>
                </tr>
            </table>
            </form>
            <footer>
                <p style="color: rgb(7, 17, 63);">Already have an account? <a href="hospiLogin.jsp" style="color: red;">Sign in</a></p>
            </footer>
        </div>
    </div>
    </footer>

        
        
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
