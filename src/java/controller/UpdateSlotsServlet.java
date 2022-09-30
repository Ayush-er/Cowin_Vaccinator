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

public class UpdateSlotsServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("login.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
        
    HttpSession session=request.getSession(true);
    String username=(String)session.getAttribute("username");
    
    int Hslots= Integer.parseInt(request.getParameter("updatedSlots"));
    
    HospiDTO hdto = new HospiDTO();
    hdto.setHmail(username);
    hdto.setHslots(Hslots);
    boolean update = false;
    
    UpdateAuthenticator ua = new UpdateAuthenticator();
    update = ua.updateSlots(hdto);
    
    
    if(update)
    {
        session.setAttribute("username", username);
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
