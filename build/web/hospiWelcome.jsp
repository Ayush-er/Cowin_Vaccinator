<%@page import="dto.HospiDTO"%>
<%@page import="dao.HospiDAO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<!-- /*
    (___)
    (o o)_____/
     @@ `     \  
      \ ____, /
      //    //  
     ^^    ^^ */ -->


<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hospital Dashboard</title>


 <link rel="stylesheet" href="uv.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


  <!-- Update Profile  -->


  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="Update_Profile.css">




  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
    }

    /*----  Main Style  ----*/


    /* Bootstrap Cards */
    #Social-cards .twitter:hover {
      background-color: #00acee;
      color: white;
      border: none !important;
      transition: 3s 0.2s ease;
    }

    #Social-cards .insta:hover {
      background-color: #8a3ab9;
      color: white;
      border: none !important;
      transition: 3s .2s linear;
    }

    #Social-cards .insta:hover .btn {
      border-radius: 0 !important;
      background-color: white !important;
      color: #8a3ab9;
    }

    #Social-cards .twitter:hover .btn {
      border-radius: 0 !important;
      background-color: white !important;
      color: #00acee;
    }

    #Social-cards .tube:hover {
      background-color: #FF0000;
      color: white;
      border: none !important;
      transition: 3s .2s ease-in-out;
    }

    #Social-cards .tube:hover .btn {
      border-radius: 0 !important;
      background-color: white !important;
      color: #FF0000;
    }



    /* Pop-Ups CSS */


    a {
      text-decoration: none;
      color: #337AB7;
    }

    a:hover {
      text-decoration: underline;
    }

    /* The Modal (background) */
    .modal {
      display: none;
      /* Hidden by default */
      position: fixed;
      /* Stay in place */
      z-index: 1;
      /* Sit on top */
      padding-top: 100px;
      /* Location of the box */
      left: 0;
      top: 0;
      width: 100%;
      /* Full width */
      height: 100%;
      /* Full height */
      overflow: auto;
      /* Enable scroll if needed */
      background-color: rgb(0, 0, 0);
      /* Fallback color */
      background-color: rgba(0, 0, 0, 0.4);
      /* Black w/ opacity */
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
    
    
  </style>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="userstyle.css">
</head>

<body background-color="white">


  <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: 2px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
        <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 5px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="login.jsp"> &nbsp;USER LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="adminLogin.jsp">&nbsp;ADMIN LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="hospiLogout">&nbsp;LOGOUT&nbsp; </a> </span>
    </nav>
    </span>
    <span>
        <nav style=" width: 100%; height: auto; padding-top: 2px; padding-bottom: 2px; margin: auto;  background-color: rgb(255, 255, 255);">
            <span style="font-weight: bolder ; font-size: 30px; color: rgb(0, 0, 0); " >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/coronavirus_logo-2-833x321.jpg" width="10%" alt="">  <span></span  ></span>
            
        </nav>
        </span>
  

  <!-- main-footer -->
  <footer class="main-footer">
    <div class="shape-layer"></div>
    <div class="anim-icon">

      <div class="icon icon-2 rotate-me" style="background-image: url(images/anim-icon-3.png);"></div>
      <div class="icon icon-3 rotate-me" style="background-image: url(images/anim-icon-6.png);"></div>
      <div class="icon icon-4 rotate-me"
        style="background-image: url(images/anim-icon-6.png); width: 300px; height: 300px;"></div>
      <div class="icon icon-5 rotate-me" style="background-image: url(images/anim-icon-4.png); "></div>




      <span>


          
          





          
           <%
     
     
     
     
     
     
     
     
     if(session.getAttribute("username")==null)
            {  
                response.sendRedirect("hospiLogin.jsp");
            }
     
     String username=(String)session.getAttribute("username");
     
     HospiDAO hdao = new HospiDAO();
     HospiDTO hdto = hdao.getHospiDetails(username);
     session.setAttribute("username", username);
     
     
     
            
           
            
 %>            
          
          

        <br><br>
        <fieldset style=" background-color: white; border: 1px solid rgb(255, 0, 0);
                      width: 90%;
                      margin:auto;">


          <h1
            style="text-align: center; font-weight: bold; color: rgb(1, 8, 70); text-decoration: underline; margin: 25px;">
            Hospital Dashboard</h1>

          <br>
          <h3 style="font-size :20px; color: rgb(1, 8, 70); margin-left: 50px; margin-bottom: 20px;">Hospital Name :
              <strong style="color: red; font-size: 20px;"> <%=hdto.getHname()%></strong></h3>
          <h3 style="font-size :20px; color: rgb(1, 8, 70); margin-left: 50px; margin-bottom: 20px;">Slots Available :
            <strong style="color: red; font-size: 20px;"> <%=hdto.getHslots()%></strong></h3>
          <h3 style="font-size :20px; color: rgb(1, 8, 70); margin-left: 50px;">Vaccines Available : <strong
              style="color: red; font-size: 20px;"> Covaxin / Covidshield</strong></h3>




          <h2 class="text-center my-5 text-capitalize"></h2>
          <div class="container" id="Social-cards" style="margin:30px; ">
            
            <div class="row">
              <div class="col-sm-4 mb-3 mb-sm-0">
                <div class="card text-center twitter border border-dark">
                  <i class="fa fa-user text-center fa-4x py-3" aria-hidden="true"></i>
                  <h3 class="text-uppercase m-0 pb-3">Update Profile</h3>
                  <div class="card-body py-0">

                    <div class="d-grid gap-2 pb-3">
                      <button id="myBtn" style="margin: 30px; background-color: white; color: red;" class="btn btn-dark rounded-pill text-capitalize"
                        type="button">Update</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 mb-3 mb-sm-0">
                <div class="card insta text-center border border-dark">
                  <i class="fas fa-medkit text-center fa-4x py-3" aria-hidden="true"></i>
                  <h3 class="text-uppercase m-0 pb-3">Update Slots</h3>
                  <div class="card-body py-0">

                    <div class="d-grid gap-2 pb-3">
                      <button style="margin: 30px; background-color: white; color: red;" class="btn btn-dark rounded-pill text-capitalize" type="button"
                        id="myBtn2">Update</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="card tube text-center border border-dark">
                  <i class="fas fa-hospital-user text-center fa-4x py-3" aria-hidden="true"></i>
                  <h3 class="text-uppercase m-0 pb-3">Users Vaccinated</h3>
                  <div class="card-body py-0">

                    <div class="d-grid gap-2 pb-3">
                      <button style="margin: 30px; background-color: white; color: red;" class="btn btn-dark rounded-pill text-capitalize"
                        type="button" id="myBtn3">View</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </form>
        </fieldset>







  </footer>

<!-- Update Hospital  -->

  <!-- The Modal -->
  <div id="myModal" class="modal">

    <!-- Modal content -->
    <div class="modal-content" style="width: 900px; height: auto; background-color: #92929200;">
      <span class="close">&times;</span>

      <div class="container h-60vh">
        <div class="row row h-100 align-items-center justify-content-centerr">
          <div class="col align-self-cente ">
            <div class="card">
              <div class="card-header text-center display-4">
                Update Hospital
              </div>
              <div class="card-body" style="margin-top: 25px;">
                  <form action="HospiUpdateServlet" method="post">
                  <div class="form-row">
                    <div class="form-group col-md-4">
                      <label for="firstName">Hospital Name</label>
                      <input type="text" class="form-control" id="firstName" value="<%=hdto.getHname()%>" name="Hname">
                    </div>
                    <div class="form-group col-md-4">
                      <label for="pincode">Pincode</label>
                      <input type="number" class="form-control" id="pincode" value="<%=hdto.getHpin()%>" name="Hpin">
                    </div>
                    <div class="form-group col-md-4">
                      <label for="inputEmail4">Email</label>
                      <input type="email" class="form-control" id="inputEmail4" value="<%=hdto.getHmail()%>" name="username" disabled>
                    </div>
                  </div>

                  <div class="form-row" style="margin-bottom: 35px; margin-top: 25px;">


                      <div class="form-group col-md-4">
                        <label for="inputState">State</label>
                        <select class="form-control" id="inputState" name="Hstate">
                                            <option value="SelectState">Select State</option>
                                            <option value="Andra Pradesh">Andra Pradesh</option>
                                            <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                            <option value="Assam">Assam</option>
                                            <option value="Bihar">Bihar</option>
                                            <option value="Chhattisgarh">Chhattisgarh</option>
                                            
                                          </select>
                      </div>
                      <div class="form-group col-md-4" >
                        <label for="inputDistrict">District</label>
                        <select class="form-control" id="inputDistrict" name="Hdistrict" >
                            <option value="">-- select one -- </option>
                        </select>
                      </div>
                      
                    </div>
                      


                    <button type="submit" class="btn btn-primary btn-lg btn-block" style="background-color:#104d9e; ">Update Details</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>


  <!-- The Modal -->
  <div id="myModal2" class="modal">

    <!-- Modal content -->
    <div class="modal-content" style="width: 900px; height: auto; ">
      <span class="close2">&times;</span>
      <h1 style=" text-decoration: underline; padding:20px; text-align: center;">Update Slots</h1>

      <div style="margin-left: 10%;">
          <form action="UpdateSlotsServlet" method="post">
        <h3 style="padding: 15px;"><span style="padding-right: 20px;">Current Available Slots : </span><strong
                style="color: red; font-weight: bold;"><input type="text" placeholder="<%=hdto.getHslots()%>" disabled></strong></h3>

        <h3 style="padding: 15px;"><span style="padding-right: 22px;">Update Available Slots : </span><strong
            style="color: red; font-weight: bold;"><input type="text" value="<%=hdto.getHslots()%>" placeholder="Enter New Slots"  name="updatedSlots"></strong></h3>

        <button type="submit" style="background-color: #4CAF50; /* Green */
      border: none;
      border-color: red;
      color: white;
      margin-top: 5%;
      margin-right: 35%;
      margin-left: 35%;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      padding-top: 15px;
      padding-bottom: 15px;
      padding-left: 25px;
      padding-right: 25px;
      font-size: 16px;
      font-weight:;">Update Slots</button>
          </form>
      </div>
    


    </div>

  </div>


<!-- Users Vaccinated -->
  <!-- The Modal -->
  <div id="myModal3" class="modal" >

    <!-- Modal content -->
    <div class="modal-content" style="width: 80%; height: auto; " >
      <span class="close3">&times;</span>

      <h1 style="color: rgb(1, 1, 77); text-align: center; font-weight: bold; font-size: 30px ; text-decoration: underline; margin-bottom: 4%; margin-top: 2%;">
                            User List !
                        </h1>
                            
                        
                        
                 <%int doses = 0;%>       
                            
                 <div class="container" >

        
      <% try
			{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid?user=root&password=root");
			PreparedStatement ps=con.prepareStatement("select * from user where Hname=?");
			ps.setString(1, hdto.getHname());
			ResultSet rs=ps.executeQuery();
                        
                        if(rs.next()){%>
                        
                            
                            
                                  
        <div class="row"style="color:black;">
          <div class="col-md-12"style="color:black;">
              
            <table class="table table-bordered" id="editableTable"style="color:black;">
              <thead style="color:black;">
                <tr style="color:black;">
                  <th style="color:black;">S.No.</th>
                  <th style="color:black;">Name</th>
                  <th style="color:black;">DOB</th>
                  <th style="color:black;">Aadhar Number</th>
                  <th style="color:black;">User ID </th>
                  <th style="color:black;">Dose</th>
                </tr>
              </thead>
              <tbody>
              
              <% 

                        ps=con.prepareStatement("select * from user where Hname=?");
			ps.setString(1, hdto.getHname());
                        ResultSet rss=ps.executeQuery();
                        int count = 1;
                        while(rss.next())
			{
                            doses = rss.getInt("dose");
                            if(doses!=0){
                            
                            %>
                            
                            
              
                  
                <tr data-id="1" style="color:black;">
                    
                  <td data-field="birthday" style="color:black;"><%out.println(count);%></td>
                  <td data-field="name" style="color:black;"><%=rss.getString("Name")%></td>
                  <td data-field="name" style="color:black;"><%=rss.getString("dob")%></td>
                  <td data-field="name" style="color:black;"><%=rss.getString("aadharno")%></td>
                  <td data-field="birthday" style="color:black;"><%=rss.getInt("User_ID")%></td>
                  <td data-field="birthday" style="color:black;"><%=rss.getInt("dose")%></td>
                  
                  
                </tr>
                
                                
                
                <%count++;%>
                <%
                            }
}
                            %>
                            
                            
                
              </tbody>
                                                

            </table>
                            
          </div>
        </div>
                            <%
			}
                        }
                        
                        
                        
			catch(SQLException e)
			{
			out.println("Error in sql statement");
			}




			
%>
      </div>


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
    btn.onclick = function () {
      modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
      modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
  </script>

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

<script>
  // Get the modal
  var modal3 = document.getElementById("myModal3");

  // Get the button that opens the modal
  var btn3 = document.getElementById("myBtn3");

  // Get the <span> element that closes the modal
  var span3 = document.getElementsByClassName("close3")[0];

  // When the user clicks the button, open the modal 
  btn3.onclick = function () {
    modal3.style.display = "block";
  }

  // When the user clicks on <span> (x), close the modal
  span3.onclick = function () {
    modal3.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function (event) {
    if (event.target == modal3) {
      modal3.style.display = "none";
    }
  }
</script>

<script>

  $(window)
    .on("load resize ", function () {
      var scrollWidth =
        $(".tbl-content").width() - $(".tbl-content table").width();
      $(".tbl-header").css({ "padding-right": scrollWidth });
    })
    .resize();
  
  
  </script>

<!-- Update Profile JS -->

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