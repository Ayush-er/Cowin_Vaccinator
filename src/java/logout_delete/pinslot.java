package logout_delete;
import java.sql.*;
import java.util.*;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/pinslot")
public class pinslot extends HttpServlet 
{

public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
{
    HttpSession session=request.getSession();
    
try
{
Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e)
{
System.out.println("Error in loading drivers");
}

String radio=request.getParameter("same");
String username = (String)session.getAttribute("username");
//Integer dose = (Integer)session.getAttribute("dose");
String dose;
    dose = (String)request.getParameter("but1");
char d=dose.charAt(0);
int a=Character.getNumericValue(d); 
PrintWriter out=response.getWriter();
out.println(dose);
try
			{
                            out.println(a);
                            if(a<2)
                            {
                               a++;
                                
                            }
                            out.println(a);
                            
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid?user=root&password=root");
			PreparedStatement ps=con.prepareStatement("update user set Hname=? , dose=? where username=?");
			ps.setString(1, radio);
                        ps.setInt(2,(a));
                        ps.setString(3, username);
			int x=ps.executeUpdate();
                        if(x>0)
                        {
			response.sendRedirect("welcome.jsp");
			}
                        else
                        {
                          out.println(username);
                          out.println(radio);
                        }
                        }
			catch(SQLException e)
			{
			out.println("Error in sql statement");
			}

}
}

