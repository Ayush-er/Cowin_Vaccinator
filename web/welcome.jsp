<%@page import="dao.UserDetailsDAO"%>
<%@page import="dto.UserDTO"%>
<!-- /*
    (___)
    (o o)_____/
     @@ `     \  
      \ ____, /
      //    //  
     ^^    ^^ */ -->


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>Covid-19 - HTML 5 Template Preview</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

a{
  text-decoration: none;
  color: #337AB7;
}
a:hover{
  text-decoration: underline;
}
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>



<!-- Login -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="userstyle.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

    <body  background-color="white">
        


  <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: -11px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
        <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 24px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="hospiLogin.jsp"> &nbsp;HOSPITAL LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="adminLogin.jsp">&nbsp;ADMIN LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="logout">&nbsp;LOGOUT&nbsp; </a> </span>
    </nav>
    </span>
    <span>
        <nav style=" width: 100%; height: auto; padding-top: 2px; padding-bottom: 2px; margin: auto;  background-color: rgb(255, 255, 255);">
            <span style="font-weight: bolder ; font-size: 30px; color: rgb(0, 0, 0); " >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/coronavirus_logo-2-833x321.jpg" width="10%" alt="">  <span></span  ></span>
            
        </nav>
        </span>
    
 <%
     
     
     
     
     
     
     
     
     if(session.getAttribute("username")==null)
            {  
                response.sendRedirect("login.jsp");
            }
     
     
     String user=(String)session.getAttribute("username");
     
     UserDTO udto = new UserDTO();
     UserDetailsDAO udao = new UserDetailsDAO();
     udto = udao.userDetails(user);
     
     
     
     
     
     
     
     String dob=udto.getDob();
     String Hname=udto.getHname();
     int dose=udto.getDose();
     int id=udto.getId();
     String name=udto.getName();
     String aadhar=udto.getAadharno();
     
     
     
     session.setAttribute("dose", dose);
     session.setAttribute("name",name);
     session.setAttribute("username", user);
     
     
     
     
     
     
     
     
     
     
            
            
           
            
 %>            
        
        
        
        <!-- main-footer -->
        <footer class="main-footer">
            <div class="shape-layer" ></div>
            <div class="anim-icon">
                
                <div class="icon icon-2 rotate-me" style="background-image: url(images/anim-icon-3.png);"></div>
                <div class="icon icon-3 rotate-me" style="background-image: url(images/anim-icon-6.png);"></div>
                <div class="icon icon-4 rotate-me" style="background-image: url(images/anim-icon-6.png); width: 300px; height: 300px;"></div>
                <div class="icon icon-5 rotate-me" style="background-image: url(images/anim-icon-4.png); "></div>


                <span>
                    
                
                
                    <br><br>
                    
                    <fieldset style="background-color:white; border: 1px solid red;   margin: auto; width: 80%; ">
                        <h2>Account Details</h2>
                        <span>
                            <h4>Registered Email Address : <span style="color: red;"><%out.println(user);%></span> <span style="text-align: center;"><button style="     margin-left: 500px;
                    
                                font-size: 16px;
                                
                                cursor: pointer;
                                padding: 10px;
                                border-radius: 5px;
                                
                                font-weight: 700;
                                background: transparent;
                                color: #002060!important;
                                border: 1px solid #002060; 
                                " id="myBtn2">Update Profile</button></span></h4>
                
                        </span>
                
                            <fieldset>
                           
                            <% if(dose==(Integer)2){%>
                            <legend style="padding: 5px;
                            background-color: rgb(255, 165, 0);
                            border-radius: 50px;
                            color: white;">Completely Vaccinated</legend>
                            <%} else if(dose==(Integer)1) {%>
                            <legend style="padding: 5px;
                            background-color: rgb(103, 167, 39);
                            border-radius: 50px;
                            color: white;">Partially Vaccinated</legend>
                            <%} else {%>
                            <legend style="padding: 5px;
                            background-color: rgb(255, 0, 0);
                            border-radius: 50px;
                            color: white;">Not Vaccinated</legend>
                            <%}%>
                            <br>
                            <div><span><strong
                                        style="color: rgb(5, 26, 70); font-family: Georgia, 'Times New Roman', Times, serif; font-size: 20px; "><%out.println(name);%>
                                        | </strong> REF ID : ABCD123456<span style="color: rgb(253, 0, 0);"><%out.println(id);%></span> |
                                    Secret Code : <%out.println(id);%>
                                </span></div>
                            <br>
                            <div><span style="font-size: 15px;"> Year Of Birth : <%out.println(dob);%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </span><span style=" font-size: 15px;  ">Photo ID : Aadhar Card </span><span
                                    style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID
                                    Number :
                                    <%out.println(aadhar);%></span></div>
                            <br>
                            <hr>
                            <br>
                            <% if(dose==(Integer)1){%>
                            <div>
                                <span style="font-weight: bold;"><span
                                        style="padding: 3px; background-color: rgb(103, 167, 39); border-radius: 100%; color: white; font-size: 13px;">
                                        ✔ </span><strong style="color: green;"> &nbsp; Dose 1</strong> <button 
                                                                                                     style="font-size: 15px; font-weight: bold; float:right;cursor: pointer; padding-left:25px; padding-top: 3px; padding-right: 25px; padding-top: 3px; border-color: rgb(11, 0, 51); background-color: white;color: rgb(7, 15, 51); border-radius: 50px;"><a href="certificate.jsp"> <img src="images/certificate.png" width="20px" height="auto">   Certificate</a></button></span>
                                <div> <span style="font-size :12px; color: green;">Appointment Details Are Not Available</span> </div>
                
                            </div>
                            <br>
                            <hr>
                            <br>
                            <div><span><span
                                        style="padding: 3px; background-color: rgb(255, 0, 0); border-radius: 100%; color: white; font-size: 13px;">
                                        ✗ </span><strong style="color: red;"> &nbsp;&nbsp; Dose 2</strong> <button 
                                                                                                         style="font-size: 15px; font-weight: bold; float:right;cursor: pointer; padding-left:30px; padding-top: 3px; padding-right: 25px; padding-top: 3px; border-color: rgb(11, 0, 51); background-color: white;color: rgb(7, 15, 51); border-radius: 50px;"> <img src="images/calendar.png" width="20px" height="auto" ><a href="slot.jsp">   Schedule</a></button></span>
                                <div> <span style="font-size :12px; color: red;">Appointment Details Are Not Available</span>
                                </div>
                
                            </div>
                            <%} else if(dose==(Integer)2) {%>
                            <div>
                                <span style="font-weight: bold;"><span
                                        style="padding: 3px; background-color: rgb(103, 167, 39); border-radius: 100%; color: white; font-size: 13px;">
                                        ✔ </span><strong style="color: green;"> &nbsp; Dose 1</strong>  <button 
                                        style="font-size: 15px; font-weight: bold; float:right;cursor: pointer; padding-left:25px; padding-top: 3px; padding-right: 25px; padding-top: 3px; border-color: rgb(11, 0, 51); background-color: white;color: rgb(7, 15, 51); border-radius: 50px;"><a href="certificate.jsp"> <img src="images/certificate.png" width="20px" height="auto">   Certificate</a></button></span>
                                <div> <span style="font-size :12px; color: green;">Appointment Details Are Not Available</span> </div>
                
                            </div>
                            <br>
                            <hr>
                            <br>
                            <div><span><span
                                        style="padding: 3px; background-color: rgb(103, 167, 39); border-radius: 100%; color: white; font-size: 13px;">
                                        ✔ </span><strong style="color: green;"> &nbsp;&nbsp; Dose 2</strong> <button 
                                        style="font-size: 15px; font-weight: bold; float:right;cursor: pointer; padding-left:30px; padding-top: 3px; padding-right: 25px; padding-top: 3px; border-color: rgb(11, 0, 51); background-color: white;color: rgb(7, 15, 51); border-radius: 50px;"><a href="certificate.jsp"> <img src="images/certificate.png" width="20px" height="auto">   Certificate</a></button></span>
                                <div> <span style="font-size :12px; color: green;">Appointment Details Are Not Available</span>
                                </div>
                
                            </div>
                           <%} else {%>
                           <div>
                                <span style="font-weight: bold;"><span
                                        style="padding: 3px; background-color: rgb(255, 0, 0); border-radius: 100%; color: white; font-size: 13px;">
                                        ✗ </span><strong style="color: red;"> &nbsp; Dose 1</strong><button 
                                        style="font-size: 15px; font-weight: bold; float:right;cursor: pointer; padding-left:25px; padding-top: 3px; padding-right: 25px; padding-top: 3px; border-color: rgb(11, 0, 51); background-color: white;color: rgb(7, 15, 51); border-radius: 50px;"> <img src="images/calendar.png" width="20px" height="auto" >  <a href="slot.jsp">   Schedule</a></button></span>
                                <div> <span style="font-size :12px; color: red;">Appointment Details Are Not Available</span> </div>
                
                            </div>
                            <br>
                            <hr>
                            <br>
                            <div><span><span
                                        style="padding: 3px; background-color: rgb(255, 0, 0); border-radius: 100%; color: white; font-size: 13px;">
                                        ✗ </span><strong style="color: red;"> &nbsp;&nbsp; Dose 2</strong></span>
                                <div> <span style="font-size :12px; color: red;">Appointment Details Are Not Available</span>
                                </div>
                
                            </div>
                            <%}%>
                            <br>
                
                        
                
                
                        </ul>
                        
                    </fieldset>
                        <br><br>
                        <% if(dose<(Integer)2){%>
                        <form action="slot.jsp" method="post">
                            <input type="text" name="but" value="<% out.println(dose);%>" style="display:none">
                        <div style="text-align: center;"><button style=" margin-bottom: 0;
                    
                    font-size: 16px;
                    
                    cursor: pointer;
                    padding: 10px;
                    border-radius: 5px;
                    text-align: center;
                    font-weight: 700;
                    background: transparent;
                    color: #002060!important;
                    border: 1px solid #002060;
                    " > + Book Slot</button></div>
                         <% } %>
                        </form>
                    
                
                
                
                    
                
                        
</fieldset>
        </footer>

<!-- The Modal -->
<div id="myModal" class="modal">

    <!-- Modal content -->
    <div class="modal-content">
      <span class="close">&times;</span>
      <p>Some text in the Modal..</p>
      <button> Ayush </button>
    </div>
  
  </div>
  
  <script>
  // Get the modal
  var modal = document.getElementById("myModal");
  
  // Get the button that opens the modal
  var btn = document.getElementById("myBtn");
  
  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];
  
  // When the user clicks the button, open the modal 
  btn.onclick = function() {
    modal.style.display = "block";
  }
  
  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
    modal.style.display = "none";
  }
  
  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
  </script>

<script>
    // Get the modal
    var modal = document.getElementById("myModal");
    
    // Get the button that opens the modal
    var btn = document.getElementById("myBtn_1");
    
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];
    
    // When the user clicks the button, open the modal 
    btn.onclick = function() {
      modal.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
    </script>

<script>
    // Get the modal
    var modal = document.getElementById("myModal");
    
    // Get the button that opens the modal
    var btn = document.getElementById("myBtn_2");
    
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];
    
    // When the user clicks the button, open the modal 
    btn.onclick = function() {
      modal.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
    </script>

<script>
    // Get the modal
    var modal = document.getElementById("myModal");
    
    // Get the button that opens the modal
    var btn = document.getElementById("myBtn_3");
    
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];
    
    // When the user clicks the button, open the modal 
    btn.onclick = function() {
      modal.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
    </script>
    
    
    <!-- The Modal -->
  <div id="myModal2" class="modal">
      
    <!-- Modal content -->
    <div class="modal-content" style="width: 500px; height: 525px; ">
        <span class="close2">&times;</span>
        <div>
        
        </div>
        <i class="fa fa-user-circle" style="font-size: 75px; color: #4CAF50; margin-left: 43%; margin-bottom: 0%;" ></i>
        <h1 style=" text-decoration: underline; padding:10px; padding-top: 2px; text-align: center;">Update Profile</h1>

        

        <fieldset style="border: 1px solid red; margin:auto; width: 80%; background-color: white;">

            <form action="UserUpdateServlet" style="padding-left:5% ; padding-top: 1%;" method="post">
       
        <div> <h3 ><span style="padding-right: 22px; ">Username : <% out.println(user); %></span><strong
            style="color: red; font-weight: bold;"><input type="text" name="username" value="<% out.println(user); %>" style="display:none"></strong></h3></div>
        
  
            <h3 style="padding-bottom:10px;"><span style="padding-right: 22px;">Name : </span><strong
              style="color: red; font-weight: bold;"><input type="text" name="t1" value="<% out.println(name); %>" placeholder="Enter Name" style="width:200px; height:25px; position:relative;  right: -11%;" ></strong></h3>
              
        <h3 style="padding-bottom:10px;"><span style="padding-right: 22px;">Aadhar No : </span><strong
              style="color: red; font-weight: bold;"><input type="text" name="t2" value="<% out.println(aadhar); %>" placeholder="Enter Adhaarno" style="width:200px; height:25px; position:relative;  right: 0%;"></strong></h3>
              
        <h3 style="padding-bottom:10px;"><span style="padding-right: 22px;">Date of birth : </span><strong
              style="color: red; font-weight: bold;"><input type="text" name="t3" value="<% out.println(dob); %>" placeholder="Enter Date of birth" style="width:200px; height:25px; position:relative;  right: 4%;"></strong></h3>
              
          <button type="submit" style="background-color: #4CAF50; /* Green */
        border: none;
        border-color: red;
        color: white;
        margin-top: 0%;
        margin-bottom: 6%;
        margin-right: 35%;
        margin-left: 35%;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        padding-top: 15px;
        padding-bottom: 15px;
        padding-left: 25px;
        padding-right: 25px;
        font-size: 16px;">Update</button>
        </form>

    </fieldset>
        </div>
     
  
  
      </div>
  
    </div>











 <script>
    // Get the modal
    var modal2 = document.getElementById("myModal2");

    // Get the button that opens the modal
    var btn2 = document.getElementById("myBtn2");

    // Get the <span> element that closes the modal
    var span2 = document.getElementsByClassName("close2")[0];

    // When the user clicks the button, open the modal 
    btn2.onclick = function () {
      modal2.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span2.onclick = function () {
      modal2.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
      if (event.target == modal2) {
        modal2.style.display = "none";
      }
    }
  </script>
        
    </body>
    
</html>
