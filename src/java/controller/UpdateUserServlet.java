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

public class UpdateUserServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("adminLogin.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
    
     
     
     
    HttpSession session=request.getSession(true);
    String username = (String)session.getAttribute("username");
    String userid = (String)session.getAttribute("userid");
    String name = request.getParameter("NAME");
    String dob = request.getParameter("DOB");
    String aadhar = request.getParameter("AADHAR");
    
    UserDTO udto = new UserDTO();
    udto.setAadharno(aadhar);
    udto.setName(name);
    udto.setDob(dob);
    udto.setUname(userid);
    boolean check = false;
    
    UpdateAuthenticator ua = new UpdateAuthenticator();
    check = ua.updateUser(udto);
    
    
    if(check)
    {
        session.setAttribute("username", username);
        response.sendRedirect("userList.jsp");
    }
    else
    {
        request.setAttribute("msg", " ");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/userList.jsp");
        rd.forward(request, response);
 
    }
}
}
