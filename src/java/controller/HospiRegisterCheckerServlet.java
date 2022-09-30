/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

public class HospiRegisterCheckerServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("hospiLogin.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
    
     String Hname=request.getParameter("name");
     String password=request.getParameter("password");
     String username1=request.getParameter("username1");
     int Hpin = Integer.parseInt(request.getParameter("pin"));
     String conpass=request.getParameter("conpass");
     String Hstate = request.getParameter("state");
     String Hdistrict = request.getParameter("district");
     
     
    HttpSession session=request.getSession(true);
    
    HospiDTO hdto = new HospiDTO();
    hdto.setHname(Hname);
    hdto.setPassword(password);
    hdto.setUsername1(username1);
    hdto.setHpin(Hpin);
    hdto.setConpass(conpass);
    hdto.setHstate(Hstate);
    hdto.setHdistrict(Hdistrict);
    boolean register = false;
    
    RegisterAuthenticator ra = new RegisterAuthenticator();
    register = ra.hospiRegister(hdto);
    
    
    if(register)
    {
        session.setAttribute("username", username1);
        response.sendRedirect("hospiWelcome.jsp");
    }
    else
    {
        request.setAttribute("msg", " ");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/hospiLogin.jsp");
        rd.forward(request, response);
 
    }
}
}
