<%@page import="dao.AdminDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.HospiDTO"%>
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

    
    <link rel="stylesheet" href="userstyle.css">

<style>

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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body style="background-color:white;" >
    

    
    <nav style="  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);">
        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style="margin: 5px; "  width="30px" src="images/coronavirus.png" alt="logo">  <span style=" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: 2px;; ">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>
        <span style="float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 9px;"> <a style="color: white; text-decoration: none;" href="home/home.html">&nbsp;HOME&nbsp; </a> | <a style="color: white; text-decoration: none;" href="login.jsp"> &nbsp;USER LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="hospiLogin.jsp">&nbsp;HOSPITAL LOGIN&nbsp; </a> | <a style="color: white; text-decoration: none;" href="">&nbsp;LOGOUT&nbsp; </a> </span>
    </nav>
    </span>
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
     String name = (String) session.getAttribute("name");
     
     session.setAttribute("username", username);
     
     


     
     
     
     
     
     
     
     
     
     
     
     
            
            
           
            
 %>            
                
                        <br><br>
                        <h1 style="text-align: left; font-family: 'Caveat', cursive; margin-left:180px;"><b>Hey <%out.println(name);%> !</b></h1>
                        <br>
                        <fieldset style=" background-color: white; border: 1px solid rgb(255, 0, 0);
                        width: 80%;
                        margin:auto;">

                            
                            
                        <h1 style="color: rgb(1, 1, 77); text-align: center; font-weight: bold; font-size: 40px ; text-decoration: underline; margin-bottom: 2%; margin-top: 2%;">
                            Hospital List 
                        </h1>
                            
                        
                        
                        
                            
    <div class="container">

        <div class="row">
          <div class="col-md-12">
            <br>
            <button class="btn btn-default pull-right add-row"><a href="insertHospi.jsp"><i class="fa fa-plus"></i>&nbsp;&nbsp; Insert Hospital</a></button>
          </div>
        </div>
      
                        
                            
                            
                                  
        <div class="row">
          <div class="col-md-12">
            <table class="table table-bordered" id="editableTable">
              <thead>
                <tr>
                  <th>S.No.</th>
                  <th>Name</th>
                  <th>State</th>
                  <th>District </th>
                  <th>Pincode</th>
                  <th>Slots Available</th>
                  <th>Edit</th>
                </tr>
              </thead>
              <tbody>
              
              <% 

                        AdminDAO admin = new AdminDAO();
                        ArrayList<HospiDTO> list = admin.hospiList();
                        for(int i = 0; i<list.size(); i++)
			{
                            HospiDTO hdto = list.get(i);
                            %>
                            
                            
              
                  
                <tr data-id="1">
                    
                  <td data-field="birthday"><%out.println(i+1);%></td>
                  <td data-field="name"><%=hdto.getHname()%></td>
                  <td data-field="name"><%=hdto.getHstate()%></td>
                  <td data-field="name"><%=hdto.getHdistrict()%></td>
                  <td data-field="birthday"><%=hdto.getHpin()%></td>
                  <td data-field="birthday"><%=hdto.getHslots()%></td>
                  
                  <td>
                      
                      <a  href="hospiUpdate.jsp?userid=<%=hdto.getHmail()%>" >
                      <i class="fa fa-user"></i>
                    </a>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a  href="deleteHospi?userid=<%=hdto.getHmail()%>">
                      <i class="fa fa-trash"></i>
                    </a>
                  </td>
                </tr>

                
                <%
                            }
                            %>
                            
                
              </tbody>
                                                

            </table>
          </div>
        </div>
                            
      </div>
    
   
                        
                        </fieldset>
                        </span>
                        
                        
<script>


(function ($, window, document, undefined) {
  var pluginName = "editable",
    defaults = {
      keyboard: true,
      dblclick: true,
      button: true,
      buttonSelector: ".edit",
      maintainWidth: true,
      dropdowns: {},
      edit: function () {},
      save: function () {},
      cancel: function () {}
    };

  function editable(element, options) {
    this.element = element;
    this.options = $.extend({}, defaults, options);

    this._defaults = defaults;
    this._name = pluginName;

    this.init();
  }

  editable.prototype = {
    init: function () {
      this.editing = false;

      if (this.options.dblclick) {
        $(this.element)
          .css("cursor", "pointer")
          .bind("dblclick", this.toggle.bind(this));
      }

      if (this.options.button) {
        $(this.options.buttonSelector, this.element).bind(
          "click",
          this.toggle.bind(this)
        );
      }
    },

    toggle: function (e) {
      e.preventDefault();

      this.editing = !this.editing;

      if (this.editing) {
        this.edit();
      } else {
        this.save();
      }
    },

    edit: function () {
      var instance = this,
        values = {};

      $("td[data-field]", this.element).each(function () {
        var input,
          field = $(this).data("field"),
          value = $(this).text(),
          width = $(this).width();

        values[field] = value;

        $(this).empty();

        if (instance.options.maintainWidth) {
          $(this).width(width);
        }

        if (field in instance.options.dropdowns) {
          input = $("<select></select>");

          for (var i = 0; i < instance.options.dropdowns[field].length; i++) {
            $("<option></option>")
              .text(instance.options.dropdowns[field][i])
              .appendTo(input);
          }

          input
            .val(value)
            .data("old-value", value)
            .dblclick(instance._captureEvent);
        } else {
          input = $('<input type="text" />')
            .val(value)
            .data("old-value", value)
            .dblclick(instance._captureEvent);
        }

        input.appendTo(this);

        if (instance.options.keyboard) {
          input.keydown(instance._captureKey.bind(instance));
        }
      });

      this.options.edit.bind(this.element)(values);
    },

    save: function () {
      var instance = this,
        values = {};

      $("td[data-field]", this.element).each(function () {
        var value = $(":input", this).val();

        values[$(this).data("field")] = value;

        $(this).empty().text(value);
      });

      this.options.save.bind(this.element)(values);
    },

    cancel: function () {
      var instance = this,
        values = {};

      $("td[data-field]", this.element).each(function () {
        var value = $(":input", this).data("old-value");

        values[$(this).data("field")] = value;

        $(this).empty().text(value);
      });

      this.options.cancel.bind(this.element)(values);
    },

    _captureEvent: function (e) {
      e.stopPropagation();
    },

    _captureKey: function (e) {
      if (e.which === 13) {
        this.editing = false;
        this.save();
      } else if (e.which === 27) {
        this.editing = false;
        this.cancel();
      }
    }
  };

  $.fn[pluginName] = function (options) {
    return this.each(function () {
      if (!$.data(this, "plugin_" + pluginName)) {
        $.data(this, "plugin_" + pluginName, new editable(this, options));
      }
    });
  };
})(jQuery, window, document);

editTable();

//custome editable starts
function editTable() {
  $(function () {
    var pickers = {};

    $("table tr").editable({
      dropdowns: {
        sex: ["Male", "Female"]
      },
      edit: function (values) {
        $(".edit i", this)
          .removeClass("fa-pencil")
          .addClass("fa-save")
          .attr("title", "Save");

        pickers[this] = new Pikaday({
          field: $("td[data-field=birthday] input", this)[0],
          format: "MMM D, YYYY"
        });
      },
      save: function (values) {
        $(".edit i", this)
          .removeClass("fa-save")
          .addClass("fa-pencil")
          .attr("title", "Edit");

        if (this in pickers) {
          pickers[this].destroy();
          delete pickers[this];
        }
      },
      cancel: function (values) {
        $(".edit i", this)
          .removeClass("fa-save")
          .addClass("fa-pencil")
          .attr("title", "Edit");

        if (this in pickers) {
          pickers[this].destroy();
          delete pickers[this];
        }
      }
    });
  });
}

$(".add-row").click(function () {
  $("#editableTable")
    .find("tbody tr:first")
    .before(
      "<tr><td data-field='name'></td><td data-field='name'></td><td data-field='name'></td><td data-field='name'></td><td><a class='button button-small edit' title='Edit'><i class='fa fa-pencil'></i></a> <a class='button button-small' title='Delete'><i class='fa fa-trash'></i></a></td></tr>"
    );
  editTable();
  setTimeout(function () {
    $("#editableTable").find("tbody tr:first td:last a[title='Edit']").click();
  }, 200);

  setTimeout(function () {
    $("#editableTable")
      .find("tbody tr:first td:first input[type='text']")
      .focus();
  }, 300);

  $("#editableTable")
    .find("a[title='Delete']")
    .unbind("click")
    .click(function (e) {
      $(this).closest("tr").remove();
    });
});

function myFunction() {}

$("#editableTable")
  .find("a[title='Delete']")
  .click(function (e) {
    var x;
    if (confirm("Are you sure you want to delete entire row?") == true) {
      $(this).closest("tr").remove();
    } else {
    }
  });


</script>

</body>
</html>




