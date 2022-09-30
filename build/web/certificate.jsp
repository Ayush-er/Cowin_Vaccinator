
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    
    
    <!-- /*
    (___)
    (o o)_____/
     @@ `     \  
      \ ____, /
      //    //  
     ^^    ^^ */ -->
    
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   
    <style>

* {
  box-sizing: border-box;
}

@media print {
  .no-print,
  .no-print * {
    display: none !important;
  }
  .print-m-0 {
    margin: 0 !important;
  }
}

.btn {
  padding: 10px 17px;
  border-radius: 3px;
  background: #f4b71a;
  border: none;
  font-size: 12px;
  margin: 10px 5px;
}

.toolbar {
  background: #333;
  width: 100vw;
  position: fixed;
  left: 0;
  top: 0;
  text-align: center;
}

.cert-container {
  margin: 65px 0 10px 0;
  width: 100%;
  display: flex;
  justify-content: center;
}

.cert {
  width: 800px;
  height: 600px;
  padding: 15px 20px;
  text-align: center;
  position: relative;
  z-index: -1;
}

.cert-bg {
  position: absolute;
  left: 0px;
  top: 0;
  z-index: -1;
  width: 100%;
}

.cert-content {
  width: 750px;
  height: 470px;
  padding: 70px 60px 0px 60px;
  text-align: center;
  font-family: Arial, Helvetica, sans-serif;
}

h1 {
  font-size: 44px;
}

p {
  font-size: 25px;
}

small {
  font-size: 14px;
  line-height: 12px;
}

.bottom-txt {
  padding: 12px 5px;
  display: flex;
  justify-content: space-between;
  font-size: 16px;
}

.bottom-txt * {
  white-space: nowrap !important;
}

.other-font {
  font-family: Cambria, Georgia, serif;
  font-style: italic;
}

.ml-215 {
  margin-left: 215px;
}


    </style>

</head>
<body>
    


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>
  
  
  
  
      <%
        
        
        if(session.getAttribute("username")==null)
            {  
                response.sendRedirect("login.jsp");
                
                
            }
    
   String username = (String)session.getAttribute("username");
   int dose = (Integer)session.getAttribute("dose");
   String name = (String)session.getAttribute("name");
   
  session.setAttribute("username", username);
  
  session.setAttribute("dose", dose);
  session.setAttribute("name",name);
    
    %>
    
    
    
  <div class="toolbar no-print">
    <button class="btn btn-info" onclick="window.print()">
      Print Certificate
    </button>
    <button class="btn btn-info" id="downloadPDF">Download PDF</button>
  </div>
  <div class="cert-container print-m-0">
    <div id="content2" class="cert">
      
      <div class="cert-content">
        <img src="images/unnamed.png" class="cert-bg" alt="" />
        <h1 class="other-font" style="text-decoration:underline;">Certificate of Vaccination</h1>
        <br>
        <span style="font-size: 30px;"><%out.println(name);%></span>
        <br /><br />
        <span class="other-font"><i><b>has been</b></i></span>
        <br />
        <span style="font-size: 40px;"><b>Vaccinated</b></span>
        <br />
        <small>(<%out.println(" "+dose+" Dose");%>)</small>
        <br /><br /><br /><br />
        <small>This certificate is authorised by Government of India.</small>
        <div class="bottom-txt">
        <img src="images/Approved.jpg" alt="Approved" style=" width: 15%; margin-left: 90%;">  
          
        </div>
      </div>
    </div>
  </div>





<script>

$("#downloadPDF").click(function () {
  // $("#content2").addClass('ml-215'); // JS solution for smaller screen but better to add media queries to tackle the issue
  getScreenshotOfElement(
    $("div#content2").get(0),
    0,
    0,
    $("#content2").width() + 45, // added 45 because the container's (content2) width is smaller than the image, if it's not added then the content from right side will get cut off
    $("#content2").height() + 30, // same issue as above. if the container width / height is changed (currently they are fixed) then these values might need to be changed as well.
    function (data) {
      var pdf = new jsPDF("l", "pt", [
        $("#content2").width(),
        $("#content2").height()
      ]);

      pdf.addImage(
        "data:image/png;base64," + data,
        "PNG",
        0,
        0,
        $("#content2").width(),
        $("#content2").height()
      );
      pdf.save("azimuth-certificte.pdf");
    }
  );
});

// this function is the configuration of the html2cavas library (https://html2canvas.hertzen.com/)
// $("#content2").removeClass('ml-215'); is the only custom line here, the rest comes from the library.
function getScreenshotOfElement(element, posX, posY, width, height, callback) {
  html2canvas(element, {
    onrendered: function (canvas) {
      // $("#content2").removeClass('ml-215');  // uncomment this if resorting to ml-125 to resolve the issue
      var context = canvas.getContext("2d");
      var imageData = context.getImageData(posX, posY, width, height).data;
      var outputCanvas = document.createElement("canvas");
      var outputContext = outputCanvas.getContext("2d");
      outputCanvas.width = width;
      outputCanvas.height = height;

      var idata = outputContext.createImageData(width, height);
      idata.data.set(imageData);
      outputContext.putImageData(idata, 0, 0);
      callback(outputCanvas.toDataURL().replace("data:image/png;base64,", ""));
    },
    width: width,
    height: height,
    useCORS: true,
    taintTest: false,
    allowTaint: false
  });
}


</script>
</body>
</html>
