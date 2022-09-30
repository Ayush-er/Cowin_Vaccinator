<!-- /*
    (___)
    (o o)_____/
     @@ `     \  
      \ ____, /
      //    //  
     ^^    ^^ */ -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<head>
<meta Ycharset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>Login page</title>

<style>
    
    .a:hover{
    text-decoration: underline;
    color:orange;
}
    
</style>

<!-- Login -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="userstyle.css">

</head>


<body>
        
        
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
 <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: 2px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
        <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 9px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="hospiLogin.jsp"> &nbsp;HOSPITAL LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="adminLogin.jsp">&nbsp;ADMIN LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="">&nbsp;LOGOUT&nbsp; </a> </span>
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
            <br><br><br>
            <div class="container">
                <div class="col-md-6 col-md-offset-3 col-xs-12">
                    <!-- @ Start login box wrapper -->
                    <div class="blmd-wrapp">
                        <div class="blmd-color-conatiner ripple-effect-All"></div>
                        <div class="blmd-header-wrapp ">
                            <div class="blmd-switches">
                                 <button class="btn btn-circle btn-lg btn-blmd ripple-effect btn-success blmd-switch-button">
                                    <svg style="width:24px;height:24px" viewBox="0 0 24 24">
                                        <path fill="#fff" d="M19,13H13V19H11V13H5V11H11V5H13V11H19V13Z" />
                                     </svg>
                                  </button>
                            </div> 
                            
                        </div> 
                        <div class="blmd-continer">
                            <!-- @ Login form container -->


<%
   String a = (String)request.getAttribute("message");
     if(a!=null)
     out.println("<FONT COLOR=RED>" + a + "</FONT>");   
%>


                        <form action="LoginCheckerServlet" class="clearfix" id="login-form" method="post" >
                            <h1>Login Page</h1>
                            <div class="col-md-12">
                                
                                <div class="input-group blmd-form">
                                    <div class="blmd-line">
                                        <input type="text" name="uname" autocomplete="on" id="username" class="form-control" required>
                                        <label class="blmd-label">Email or Username</label>
                                    </div>
                                </div>
                                <div class="input-group blmd-form">
                                    <div class="blmd-line">
                                        <input type="password" name="pass" autocomplete="off" id="password" class="form-control" required>
                                        <label class="blmd-label">Password</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 text-center">
                                <button type="submit" class="btn btn-blmd ripple-effect btn-success btn-lg btn-block">Login</button>
                            </div>
                            <br/>
                        </form>
                        <!-- @ Register form container -->
                        <form action="UserRegisterCheckerServlet" class="clearfix form-hidden" id="Register-form" method="post">
                            <h1>Register Page</h1>
                            <div class="col-md-12">
                                
                                <div class="input-group blmd-form">
                                    <div class="blmd-line">
                                        <input type="text" name="fullname" autocomplete="off" id="username" class="form-control" required>
                                        <label class="blmd-label">Full Name</label>
                                    </div>
                                </div>

				<div class="input-group blmd-form">
                                    <div class="blmd-line">
                                        <input type="text" name="rusername" autocomplete="off" id="username" class="form-control" required>
                                        <label class="blmd-label">Email-ID</label>
                                    </div>
                                </div>
				<div class="input-group blmd-form">
                                    <div class="blmd-line">
                                        <input type="text" name="aadhar" autocomplete="off" id="username" class="form-control" required>
                                        <label class="blmd-label">Aadhar Card No.</label>
                                    </div>
                                </div>
                                <div class="input-group blmd-form">
                                    <div class="blmd-line">
                                        <input type="password" name="rpassword" autocomplete="off" id="password" class="form-control" required>
                                        <label class="blmd-label">Password</label>
                                    </div>
                                </div>
                                 <div class="input-group blmd-form">
                                    <div class="blmd-line">
                                        <input type="password" name="repassword" autocomplete="off" id="password" class="form-control" required>
                                        <label class="blmd-label">Confirm Password</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 text-center">
                                <button type="submit" class="btn btn-blmd ripple-effect btn-warning btn-lg btn-block">Register</button>
                            </div>
                            <br/>
                        </form>
                    </div>
                </div>
                    
                </div>
            </div>
    
    
    <script>
    (function ($) {
        
        // Ripple-effect animation
        $(".ripple-effect").click(function (e) {
            var rippler = $(this);
    
              rippler.append("<span class='ink'></span>");
    
            var ink = rippler.find(".ink:last-child");
            // prevent quick double clicks
            ink.removeClass("animate");
    
            // set .ink diametr
            if (!ink.height() && !ink.width()) {
                var d = Math.max(rippler.outerWidth(), rippler.outerHeight());
                ink.css({
                    height: d,
                    width: d
                });
            }
    
            // get click coordinates
            var x = e.pageX - rippler.offset().left - ink.width() / 2;
            var y = e.pageY - rippler.offset().top - ink.height() / 2;
    
            // set .ink position and add class .animate
            ink.css({
                top: y + 'px',
                left: x + 'px'
            }).addClass("animate");
            
            // remove ink after 1second from parent container
            setTimeout(function(){
                ink.remove();
            },1000)
        })
    
    
    
    // Ripple-effect-All animation
       function fullRipper(color,time){
           setTimeout(function(){
                var rippler = $(".ripple-effect-All");
                if(rippler.find(".ink-All").length == 0){
                    rippler.append("<span class='ink-All'></span>");
                    
    
                    var ink = rippler.find(".ink-All");
                    // prevent quick double clicks
                    //ink.removeClass("animate");
    
                    // set .ink diametr
                    if (!ink.height() && !ink.width()) {
                        var d = Math.max(rippler.outerWidth(), rippler.outerHeight());
                        ink.css({
                            height: d,
                            width: d
                        });
                    }
    
                    // get click coordinates
                    var x =0;
                    var y =rippler.offset().top - ink.height()/1.5;
    
                    // set .ink position and add class .animate
                    ink.css({
                        top: y + 'px',
                        left: x + 'px',
                        background:color
                    }).addClass("animate");
    
                    rippler.css('z-index',2);
    
                 -   setTimeout(function(){
                        ink.css({
                            '-webkit-transform': 'scale(2.5)',
                            '-moz-transform': 'scale(2.5)',
                            '-ms-transform': 'scale(2.5)',
                            '-o-transform': 'scale(2.5)',
                            'transform': 'scale(2.5)'
                        })
                        rippler.css('z-index',0);
                    },1500);
                }
           },time)
            
        }
    
        // Form control border-bottom line
        $('.blmd-line .form-control').bind('focus',function(){
            $(this).parent('.blmd-line').addClass('blmd-toggled').removeClass("hf");
        }).bind('blur',function(){
            var val=$(this).val();
            if(val){
                $(this).parent('.blmd-line').addClass("hf");
            }else{
                $(this).parent('.blmd-line').removeClass('blmd-toggled');
            }
        })
    
        // Change forms
        $(".blmd-switch-button").click(function(){
            var _this=$(this);
            if(_this.hasClass('active')){
                setTimeout(function(){
                    _this.removeClass('active');
                    $(".ripple-effect-All").find(".ink-All").remove();
                    $(".ripple-effect-All").css('z-index',0);
                },1300);
                $(".ripple-effect-All").find(".ink-All").css({
                    '-webkit-transform': 'scale(0)',
                    '-moz-transform': 'scale(0)',
                    '-ms-transform': 'scale(0)',
                    '-o-transform': 'scale(0)',
                    'transform': 'scale(0)',
                    'transition':'all 1.5s'
                })
                $(".ripple-effect-All").css('z-index',2);
                $('#Register-form').addClass('form-hidden')
                .removeClass('animate');
                $('#login-form').removeClass('form-hidden');
            }else{
                fullRipper("#26a69a",750);
                _this.addClass('active');
                setTimeout(function(){
                    $('#Register-form').removeClass('form-hidden')
                    .addClass('animate');
                    $('#login-form').addClass('form-hidden');
                },2000)
                
            }
        })
    })(jQuery);
    </script>


        </footer>
        </body>
        </html>

