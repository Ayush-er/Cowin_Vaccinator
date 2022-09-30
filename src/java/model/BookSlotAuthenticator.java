
package model;

import db.DBConnector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BookSlotAuthenticator {
    
    DBConnector db = new DBConnector();
    Statement st = db.getStatement();
    
    public String getDist(String pin)
    {
        String dist="";
        int pincode = Integer.parseInt(pin);
        String query="select * from hospital where Hpin='"+pincode+"'";
        try
        {
            ResultSet rs = st.executeQuery(query);
            if(rs.next())
            {
                dist = rs.getString("Hdistrict");
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return dist;
    }
    
}
