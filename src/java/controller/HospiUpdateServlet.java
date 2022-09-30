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

public class HospiUpdateServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("hospiLogin.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
        
     
    HttpSession session=request.getSession(true);
    
    String username=(String)session.getAttribute("username");
    String Hname=request.getParameter("Hname");
    String Hstate=request.getParameter("Hstate");
    String Hdistrict = request.getParameter("Hdistrict");
    int Hpin= Integer.parseInt(request.getParameter("Hpin"));
    
    HospiDTO hdto = new HospiDTO();
    hdto.setHname(Hname);
    hdto.setHpin(Hpin);
    hdto.setUsername1(username);
    hdto.setHmail(username);
    hdto.setHstate(Hstate);
    hdto.setHdistrict(Hdistrict);
    
    boolean check = false;
    
    UpdateAuthenticator ua = new UpdateAuthenticator();
    check = ua.hospiUpdate(hdto);
    
    
    if(check)
    {
        session.setAttribute("username", username);
        response.sendRedirect("hospiWelcome.jsp");
    }
    else
    {
        request.setAttribute("msg", " ");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/hospiWelcome.jsp");
        rd.forward(request, response);
 
    }
}
}
