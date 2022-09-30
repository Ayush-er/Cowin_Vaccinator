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

    public class LoginCheckerServlet extends HttpServlet {

        public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
        {
             response.sendRedirect("login.jsp");
        }
        public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException
        {

         String uname=request.getParameter("uname");
         String pass=request.getParameter("pass");


        HttpSession session=request.getSession(true);

        UserDTO udto = new UserDTO();
        udto.setUname(uname);
        udto.setPass(pass);
        boolean login = false;

        LoginAuthenticator la = new LoginAuthenticator();
        login = la.userLogin(udto);


        if(login)
        {
            session.setAttribute("username", uname);
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
