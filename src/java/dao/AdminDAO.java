
package dao;

import db.DBConnector;
import dto.AdminDTO;
import dto.HospiDTO;
import dto.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class AdminDAO {
    DBConnector db = new DBConnector();
    Statement st = db.getStatement();
    
    public String adminDetails(String username)
    {
        String name="";
        String query = "Select Name from admin where email='"+username+"'";
        
        try
        {
            ResultSet rs = st.executeQuery(query);
            if(rs.next())
            {
                name = rs.getString("Name");
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return name;
    }
    
    public ArrayList<HospiDTO> hospiList()
    {
        ArrayList<HospiDTO> list = new ArrayList<>();
        
        String query = "Select * from hospital";
        try
        {
            ResultSet rs = st.executeQuery(query);
            while(rs.next())
            {
                HospiDTO hdto = new HospiDTO();
                hdto.setHname(rs.getString("Hname"));
                hdto.setHdistrict(rs.getString("Hdistrict"));
                hdto.setHpin(rs.getInt("Hpin"));
                hdto.setHstate(rs.getString("Hstate"));
                hdto.setHslots(rs.getInt("Hslots"));
                hdto.setHmail(rs.getString("Hmail"));
                list.add(hdto);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return list;
    }
    
    public ArrayList<UserDTO> userList()
    {
        ArrayList<UserDTO> list = new ArrayList<>();
        
        String query = "Select * from user";
        try
        {
            ResultSet rs = st.executeQuery(query);
            while(rs.next())
            {
                UserDTO udto = new UserDTO();
                udto.setName(rs.getString("Name"));
                udto.setHname(rs.getString("Hname"));
                udto.setAadharno(rs.getString("aadharno"));
                udto.setId(rs.getInt("User_ID"));
                udto.setDob(rs.getString("dob"));
                udto.setDose(rs.getInt("dose"));
                udto.setUname(rs.getString("username"));
                list.add(udto);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return list;
    }
}
