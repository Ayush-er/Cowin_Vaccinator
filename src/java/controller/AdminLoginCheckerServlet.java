/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.AdminDTO;
import dto.UserDTO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticator;

public class AdminLoginCheckerServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("adminLogin.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
    
     String username = request.getParameter("username");
     String password = request.getParameter("password");
     
     
    HttpSession session=request.getSession(true);
    
    AdminDTO udto = new AdminDTO();
    udto.setUsername(username);
    udto.setPassword(password);
    boolean login = false;
    
    LoginAuthenticator la = new LoginAuthenticator();
    login = la.adminLogin(udto);
    
    
    if(login)
    {
        session.setAttribute("username", username);
        response.sendRedirect("adminWelcome.jsp");
    }
    else
    {
        request.setAttribute("msg", " ");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/adminLogin.jsp");
        rd.forward(request, response);
 
    }
}
}
