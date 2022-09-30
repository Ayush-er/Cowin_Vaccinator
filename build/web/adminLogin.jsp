

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        <!-- /*
    (___)
    (o o)_____/
     @@ `     \  
      \ ____, /
      //    //  
     ^^    ^^ */ -->
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
            <link rel="stylesheet" href="userstyle.css">
    <style>

body {
  font-family: sans-serif;
  background: brown;
}

h1 {
  text-align: center;
  font-weight: 300;
}

.tulisan_login {
  text-align: center;
  font-family: 'Caveat', cursive;
  text-transform: uppercase;
}

.kotak_login {
  width: 350px;
  background: #f2f2f2;
  /*tengah*/
  margin: 40px auto;
  padding: 30px 20px;
  box-shadow: 0 0 9px;
}

label {
  font-size: 11pt;
}

.form_login {
  box-sizing: border-box;
  width: 100%;
  padding: 10px;
  font-size: 11pt;
  margin-bottom: 20px;
}

.tombol_login {
  background: green;
  color: white;
  font-size: 11pt;
  width: 100%;
  border: none;
  border-radius: 3px;
  padding: 10px 20px;
  cursor:pointer;
}

.link {
  color: #232323;
  text-decoration: none;
  font-size: 10pt;
}


input[type="submit"]:hover {
  background-color: #45a049;

}


    </style>
    </head>
    <body style="background-color: white;">
    
    <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: -12px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
                <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 24px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="login.jsp"> &nbsp;USER LOGIN&nbsp; </a> | <a class="a" style="color: white; text-decoration: none;" href="hospiLogin.jsp">&nbsp;HOSPITAL LOGIN&nbsp; </a>  </span>
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

                        <div class="kotak_login">
                            <p class="tulisan_login"><big>Welcome Admin</big></p>
                        
                            <img src="images/admin  logo.png" alt="coffee" style=" 	border-radius: 50%;
                            width: 150px;
                            margin: 0 auto;
                            display: block;">
                        
                            
                            <form action="AdminLoginCheckerServlet" method="post">
                                  <label style="margin-bottom:10px;">Username</label>
                                  <input type="text" name="username" class="form_login" placeholder="Username .." required="on">
                        
                                <label style="margin-bottom:10px;">Password</label>
                                <input type="password" name="password" class="form_login" placeholder="Password .." required="on">
                        
                                <input type="submit" class="tombol_login" >
                              </form>
                        
                          </div>


                        </span>
                        </div>
                        </footer>
                        
</body>
</html>