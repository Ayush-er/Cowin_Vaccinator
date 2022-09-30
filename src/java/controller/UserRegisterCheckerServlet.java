/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.UserDTO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticator;
import model.RegisterAuthenticator;

public class UserRegisterCheckerServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("login.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
    
     String name=request.getParameter("fullname");
     String password=request.getParameter("rpassword");
     String username=request.getParameter("rusername");
     String aadharno=request.getParameter("aadhar");
     String conpass=request.getParameter("repassword");
     String dob=null;
     String Hname=null;
     int dose=0;
     int id=0;
     
     
    HttpSession session=request.getSession(true);
    
    UserDTO udto = new UserDTO();
    udto.setUname(username);
    udto.setPass(password);
    udto.setConpass(conpass);
    udto.setHname(Hname);
    udto.setAadharno(aadharno);
    udto.setDob(dob);
    udto.setDose(dose);
    udto.setName(name);
    udto.setId(id);
    boolean register = false;
    
    RegisterAuthenticator ra = new RegisterAuthenticator();
    register = ra.userRegister(udto);
    
    
    if(register)
    {
        session.setAttribute("username", username);
        response.sendRedirect("welcome.jsp");
    }
    else
    {
        request.setAttribute("msg", " ");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
        rd.forward(request, response);
 
    }
}
}
