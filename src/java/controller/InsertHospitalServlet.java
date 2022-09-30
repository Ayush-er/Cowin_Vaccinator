
package controller;

import dto.HospiDTO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.RegisterAuthenticator;

public class InsertHospitalServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
         response.sendRedirect("adminLogin.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
    {
    
     
     
     
    HttpSession session=request.getSession(true);
    String username = (String)session.getAttribute("username");
    
    String Hname=request.getParameter("name");
    String password=request.getParameter("password");
    String username1=request.getParameter("username1");
    int Hpin = Integer.parseInt(request.getParameter("pin"));
    String conpass=request.getParameter("conpass");
    String Hstate = request.getParameter("state");
    String Hdistrict = request.getParameter("district");
    
    HospiDTO hdto = new HospiDTO();
    hdto.setHname(Hname);
    hdto.setUsername1(username1);
    hdto.setHmail(username);
    hdto.setHstate(Hstate);
    hdto.setHdistrict(Hdistrict);
    hdto.setConpass(conpass);
    hdto.setHpin(Hpin);
    hdto.setPassword(password);
    
    boolean check = false;
    
    RegisterAuthenticator ra = new RegisterAuthenticator();
    check = ra.hospiRegister(hdto);
    
    
    if(check)
    {
        session.setAttribute("username", username);
        response.sendRedirect("hospiList.jsp");
    }
    else
    {
        request.setAttribute("msg", " ");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/insertHospi.jsp");
        rd.forward(request, response);
 
    }
}
}
