
package controller;

import dto.HospiDTO;
import dto.UserDTO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.RegisterAuthenticator;

public class InsertUserServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("adminLogin.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
    
     
     
     
    HttpSession session=request.getSession();
    String username = (String)session.getAttribute("username");
    session.setAttribute("username", username);

   String name=request.getParameter("name");
   String password=request.getParameter("password");
   String username1=request.getParameter("username1");
   String aadharno=request.getParameter("aadharno");
   String conpass=request.getParameter("conpass");
    
    UserDTO udto = new UserDTO();
    udto.setAadharno(aadharno);
    udto.setName(name);
    udto.setPass(password);
    udto.setConpass(conpass);
    udto.setUname(username1);
    
    boolean check = false;
    
    RegisterAuthenticator ra = new RegisterAuthenticator();
    check = ra.userRegister(udto);
    
    
    if(check)
    {
        session.setAttribute("username", username);
        response.sendRedirect("userList.jsp");
    }
    else
    {
        request.setAttribute("msg", " ");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/insertUser.jsp");
        rd.forward(request, response);
 
    }
}
}
