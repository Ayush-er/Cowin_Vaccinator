
package dao;

import db.DBConnector;
import dto.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDetailsDAO {
    DBConnector db = new DBConnector();
    Statement st = db.getStatement();
    
    public UserDTO userDetails(String username)
    {
        UserDTO udto = new UserDTO();
        String query = "select * from user where username='"+username+"' ";
        
        try
        {
            ResultSet rs = st.executeQuery(query);
            while(rs.next())
            {
                udto.setName(rs.getString("Name"));
                udto.setHname(rs.getString("Hname"));
                udto.setAadharno(rs.getString("aadharno"));
                udto.setId(rs.getInt("User_ID"));
                udto.setDob(rs.getString("dob"));
                udto.setDose(rs.getInt("dose"));
            }
                
        }
        
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return udto;
    }
}
