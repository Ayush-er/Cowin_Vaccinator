
package model;

import db.DBConnector;
import dto.AdminDTO;
import dto.HospiDTO;
import dto.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class LoginAuthenticator {
    DBConnector db = new DBConnector();
    Statement st = db.getStatement();
    
    public boolean userLogin(UserDTO user)
    {
        
        String userid=user.getUname();
        String password=user.getPass();       
    
        String query="";
        String tablepassword="";
    
        query ="select password from user where username='"+userid+"'";
        System.out.println(query);
   
        try
        {
            ResultSet rs=st.executeQuery(query);

            if(rs.next())
            {
                tablepassword=rs.getString("password"); 
                if(userid!=null && password!=null && !userid.equals("")&& password.equals(tablepassword))
                {
                  return true;
                }
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
    
    
    
    public boolean adminLogin(AdminDTO admin)
    {
        String userid=admin.getUsername();
        String password=admin.getPassword();       
    
        String query="";
        String tablepassword="";
    
        query ="select password from admin where email='"+userid+"'";
        System.out.println(query);
   
        try
        {
            ResultSet rs=st.executeQuery(query);

            if(rs.next())
            {
                tablepassword=rs.getString("password"); 
                if(userid!=null && password!=null && !userid.equals("")&& password.equals(tablepassword))
                {
                  return true;
                }
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
    
    public boolean hospiLogin(HospiDTO hospi)
    {
        String userid=hospi.getUsername1();
        String password=hospi.getPassword();       
    
        String query="";
        String tablepassword="";
    
        query ="select hpass from hospital where Hmail='"+userid+"'";
        System.out.println(query);
   
        try
        {
            ResultSet rs=st.executeQuery(query);

            if(rs.next())
            {
                tablepassword=rs.getString("hpass"); 
                if(userid!=null && password!=null && !userid.equals("")&& password.equals(tablepassword))
                {
                  return true;
                }
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
}
