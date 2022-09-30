
package model;

import db.DBConnector;
import dto.HospiDTO;
import dto.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class UpdateAuthenticator {
    
    DBConnector db = new DBConnector();
    Statement st = db.getStatement();
    Connection con = db.getConnection();
    
    public boolean updateHospi(HospiDTO hdto)
    {
        String query = "UPDATE hospital set Hname=? , Hstate=? , Hdistrict=? where Hmail=?";
        try
        {
            PreparedStatement ps=con.prepareStatement(query);
			
                        ps.setString(1, hdto.getHname());
                        ps.setString(2, hdto.getHstate());
                        ps.setString(3, hdto.getHdistrict());
                        ps.setString(4, hdto.getHmail());
                        
                        int x = ps.executeUpdate();
                        if(x>0)
                        {
                            return true;
                        }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return false;
}
    
        public boolean hospiUpdate(HospiDTO hdto)
    {
        String query = "UPDATE hospital set Hname=? , Hstate=? , Hdistrict=? , Hpin=? where Hmail=?";
        try
        {
            PreparedStatement ps=con.prepareStatement(query);
			
                        ps.setString(1, hdto.getHname());
                        ps.setString(2, hdto.getHstate());
                        ps.setString(3, hdto.getHdistrict());
                        ps.setInt(4, hdto.getHpin());
                        ps.setString(5, hdto.getHmail());
                        
                        int x = ps.executeUpdate();
                        if(x>0)
                        {
                            return true;
                        }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return false;
}
        
        public boolean updateSlots(HospiDTO hdto)
        {
            String query = "update hospital set Hslots=? where Hmail=?";
            try
            {
                PreparedStatement ps=con.prepareStatement(query);
                ps.setInt(1,hdto.getHslots());
                ps.setString(2,hdto.getHmail());
                        
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
            return false;
        }
       
        public boolean updateUser(UserDTO udto)
    {
        String query = "UPDATE user set Name=? , dob=? , aadharno=? where username=?";
        try
        {
            PreparedStatement ps=con.prepareStatement(query);
			
                        ps.setString(1, udto.getName());
                        ps.setString(2, udto.getDob());
                        ps.setString(3, udto.getAadharno());
                        ps.setString(4, udto.getUname());
                        
                        int x = ps.executeUpdate();
                        if(x>0)
                        {
                            return true;
                        }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return false;
}
        
        
        public boolean userUpdate(UserDTO udto)
    {
        String query = "update user set Name=?, aadharno=?, dob=? where username=?";
        
        try
        {
            PreparedStatement ps=con.prepareStatement(query);
			
                        ps.setString(1,udto.getName());
                        ps.setString(2,udto.getAadharno());
                        ps.setString(3,udto.getDob());
                        ps.setString(4,udto.getUname());
                        
                        int x = ps.executeUpdate();
                        if(x>0)
                        {
                            return true;
                        }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return false;
}
}
