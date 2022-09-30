package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!-- /*\n");
      out.write("    (___)\n");
      out.write("    (o o)_____/\n");
      out.write("     @@ `     \\  \n");
      out.write("      \\ ____, /\n");
      out.write("      //    //  \n");
      out.write("     ^^    ^^ */ -->\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Login</title>\n");
      out.write("            <link rel=\"stylesheet\" href=\"userstyle.css\">\n");
      out.write("    <style>\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  font-family: sans-serif;\n");
      out.write("  background: brown;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h1 {\n");
      out.write("  text-align: center;\n");
      out.write("  font-weight: 300;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".tulisan_login {\n");
      out.write("  text-align: center;\n");
      out.write("  font-family: 'Caveat', cursive;\n");
      out.write("  text-transform: uppercase;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".kotak_login {\n");
      out.write("  width: 350px;\n");
      out.write("  background: #f2f2f2;\n");
      out.write("  /*tengah*/\n");
      out.write("  margin: 40px auto;\n");
      out.write("  padding: 30px 20px;\n");
      out.write("  box-shadow: 0 0 9px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("label {\n");
      out.write("  font-size: 11pt;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form_login {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 10px;\n");
      out.write("  font-size: 11pt;\n");
      out.write("  margin-bottom: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".tombol_login {\n");
      out.write("  background: green;\n");
      out.write("  color: white;\n");
      out.write("  font-size: 11pt;\n");
      out.write("  width: 100%;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 3px;\n");
      out.write("  padding: 10px 20px;\n");
      out.write("  cursor:pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".link {\n");
      out.write("  color: #232323;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 10pt;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("input[type=\"submit\"]:hover {\n");
      out.write("  background-color: #45a049;\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: white;\">\n");
      out.write("    \n");
      out.write("    <nav style=\"  width: 100%; height: auto; padding-top: 5px; padding-bottom: 5px; margin: auto;  background-color: rgb(7, 17, 63);\">\n");
      out.write("        <span > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img style=\"margin: 5px; \"  width=\"30px\" src=\"images/coronavirus.png\" alt=\"logo\">  <span style=\" margin: 0px; height: 10px; color: rgb(255, 255, 255); position: relative; top: -12px;; \">WINNING &nbsp; AGAINST &nbsp; COVID - 19 <span></span>\n");
      out.write("                <span style=\"float: right; color: rgb(255, 255, 255); padding-right: 150px; position: relative; top: 24px;\"> <a style=\"color: white; text-decoration: none;\" href=\"home/home.html\">&nbsp;HOME&nbsp; </a> | <a style=\"color: white; text-decoration: none;\" href=\"login.jsp\"> &nbsp;USER LOGIN&nbsp; </a> | <a class=\"a\" style=\"color: white; text-decoration: none;\" href=\"hospiLogin.jsp\">&nbsp;HOSPITAL LOGIN&nbsp; </a>  </span>\n");
      out.write("    </nav>\n");
      out.write("    \n");
      out.write("    <span>\n");
      out.write("        <nav style=\" width: 100%; height: auto; padding-top: 2px; padding-bottom: 2px; margin: auto;  background-color: rgb(255, 255, 255);\">\n");
      out.write("            <span style=\"font-weight: bolder ; font-size: 30px; color: rgb(0, 0, 0); \" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"images/coronavirus_logo-2-833x321.jpg\" width=\"10%\" alt=\"\">  <span></span  ></span>\n");
      out.write("            \n");
      out.write("        </nav>\n");
      out.write("        </span>\n");
      out.write("        \n");
      out.write("            <!-- main-footer -->\n");
      out.write("            <footer class=\"main-footer\">\n");
      out.write("                <div class=\"shape-layer\" ></div>\n");
      out.write("                <div class=\"anim-icon\">\n");
      out.write("                    \n");
      out.write("                    <div class=\"icon icon-2 rotate-me\" style=\"background-image: url(images/anim-icon-3.png);\"></div>\n");
      out.write("                    <div class=\"icon icon-3 rotate-me\" style=\"background-image: url(images/anim-icon-6.png);\"></div>\n");
      out.write("                    <div class=\"icon icon-4 rotate-me\" style=\"background-image: url(images/anim-icon-6.png); width: 300px; height: 300px;\"></div>\n");
      out.write("                    <div class=\"icon icon-5 rotate-me\" style=\"background-image: url(images/anim-icon-4.png); \"></div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("                    <span>\n");
      out.write("\n");
      out.write("                        <div class=\"kotak_login\">\n");
      out.write("                            <p class=\"tulisan_login\"><big>Welcome Admin</big></p>\n");
      out.write("                        \n");
      out.write("                            <img src=\"images/admin  logo.png\" alt=\"coffee\" style=\" \tborder-radius: 50%;\n");
      out.write("                            width: 150px;\n");
      out.write("                            margin: 0 auto;\n");
      out.write("                            display: block;\">\n");
      out.write("                        \n");
      out.write("                            \n");
      out.write("                            <form action=\"AdminLoginCheckerServlet\" method=\"post\">\n");
      out.write("                                  <label style=\"margin-bottom:10px;\">Username</label>\n");
      out.write("                                  <input type=\"text\" name=\"username\" class=\"form_login\" placeholder=\"Username ..\" required=\"on\">\n");
      out.write("                        \n");
      out.write("                                <label style=\"margin-bottom:10px;\">Password</label>\n");
      out.write("                                <input type=\"password\" name=\"password\" class=\"form_login\" placeholder=\"Password ..\" required=\"on\">\n");
      out.write("                        \n");
      out.write("                                <input type=\"submit\" class=\"tombol_login\" >\n");
      out.write("                              </form>\n");
      out.write("                        \n");
      out.write("                          </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </span>\n");
      out.write("                        </div>\n");
      out.write("                        </footer>\n");
      out.write("                        \n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
