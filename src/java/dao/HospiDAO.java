
package dao;

import db.DBConnector;
import dto.HospiDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class HospiDAO {
    DBConnector db = new DBConnector();
    Statement st = db.getStatement();
    
    public HospiDTO getHospiDetails(String username)
    {
        HospiDTO hdto = new HospiDTO();
        
        String query = "Select * from hospital where Hmail='"+username+"'";
        
        try
        {
            ResultSet rs = st.executeQuery(query);
            if(rs.next())
            {
                hdto.setHname(rs.getString("Hname"));
                hdto.setHstate(rs.getString("Hstate"));
                hdto.setHdistrict(rs.getString("Hdistrict"));
                hdto.setHmail(rs.getString("Hmail"));
                hdto.setHpin(rs.getInt("Hpin"));
                hdto.setHslots(rs.getInt("Hslots"));
            }
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return hdto;
    }
    
    public ArrayList<HospiDTO> hospiList( String dist)
    {
        ArrayList<HospiDTO> list = new ArrayList<>();
        
        String query = "Select * from hospital where Hdistrict='"+dist+"'";
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
    
}
