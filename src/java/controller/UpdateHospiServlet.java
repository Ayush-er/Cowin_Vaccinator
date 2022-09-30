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

public class UpdateHospiServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("adminLogin.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
    
     
     
     
    HttpSession session=request.getSession(true);
    String username = (String)session.getAttribute("username");
    String Hmail = (String)session.getAttribute("Hmail");
    String name = request.getParameter("Name");
    String state = request.getParameter("State");
    String district = request.getParameter("District");
    
    HospiDTO hdto = new HospiDTO();
    hdto.setHname(name);
    hdto.setUsername1(username);
    hdto.setHmail(Hmail);
    hdto.setHstate(state);
    hdto.setHdistrict(district);
    boolean check = false;
    
    UpdateAuthenticator ua = new UpdateAuthenticator();
    check = ua.updateHospi(hdto);
    
    
    if(check)
    {
        session.setAttribute("username", username);
        response.sendRedirect("hospiList.jsp");
    }
    else
    {
        request.setAttribute("msg", " ");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/hospiList.jsp");
        rd.forward(request, response);
 
    }
}
}
