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
import model.LoginAuthenticator;
import model.UpdateAuthenticator;

public class UserUpdateServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("login.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
        
     
    HttpSession session=request.getSession(true);
    
    String uname=(String)session.getAttribute("username");
    String username=request.getParameter("username");
    String name=request.getParameter("t1");
    String aadhar=request.getParameter("t2");
    String dob=request.getParameter("t3");
    
    UserDTO udto = new UserDTO();
    udto.setAadharno(aadhar);
    udto.setUname(username);
    udto.setName(name);
    udto.setDob(dob);
    
    boolean check = false;
    
    UpdateAuthenticator ua = new UpdateAuthenticator();
    check = ua.userUpdate(udto);
    
    
    if(check)
    {
        session.setAttribute("username", uname);
        response.sendRedirect("welcome.jsp");
    }
    else
    {
        request.setAttribute("msg", " ");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/welcome.jsp");
        rd.forward(request, response);
 
    }
}
}
