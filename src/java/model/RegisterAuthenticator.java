package model;

import db.DBConnector;
import dto.HospiDTO;
import dto.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class RegisterAuthenticator {
    DBConnector db = new DBConnector();
    Statement st = db.getStatement();
    Connection con = db.getConnection();
    
    public boolean userRegister(UserDTO udto)
    {
        String query = "insert into user values(?,?,?,?,?,null,null,0,null)";
        
        if(udto.getPass().equals(udto.getConpass()))
        {
            try
            {
                PreparedStatement ps=con.prepareStatement(query);
                ps.setString(1,udto.getName());
                ps.setString(2,udto.getPass());
                ps.setString(3,udto.getUname());
                ps.setString(4,udto.getAadharno());
                ps.setString(5,udto.getConpass());
                int x=ps.executeUpdate();
                if(x>0)
                {
                    return true;
                }
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
        }
        
        return false;
    }
    
    public boolean hospiRegister(HospiDTO hdto)
    {
        
        String query = "insert into hospital values(?,?,?,?,?,?,0)" ;
        
        if(hdto.getPassword().equals(hdto.getConpass()))
        {
            try
            {
                PreparedStatement ps=con.prepareStatement(query);
                ps.setString(1,hdto.getHname());
                ps.setInt(2,hdto.getHpin());
                ps.setString(3,hdto.getHstate());
                ps.setString(4, hdto.getHdistrict());
                ps.setString(5,hdto.getUsername1());
                ps.setString(6,hdto.getPassword());

                int x=ps.executeUpdate();
                if(x>0)
                {
                    return true;
                }
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
        }
        
        return false;
    }
}