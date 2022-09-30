/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.AdminDTO;
import dto.HospiDTO;
import dto.SlotDTO;
import dto.UserDTO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.BookSlotAuthenticator;

public class BookSlotServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("login.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
    
     HttpSession session = request.getSession(true);
     String user=(String)session.getAttribute("username");
    
     String search = request.getParameter("search");
     
     if(search.equals("pin"))
     {
         String pin = request.getParameter("pincode");
         BookSlotAuthenticator bsa = new BookSlotAuthenticator();
         String dist = bsa.getDist(pin);
         
         session.setAttribute("item", dist);
     }
     
     else
     {
         session.setAttribute("item", request.getParameter("district"));
     }
     
     
    response.sendRedirect("slot.jsp");
}
}
