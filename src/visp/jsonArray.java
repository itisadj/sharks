package visp;
import java.io.IOException;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import org.json.*;

public class jsonArray{
	public JSONObject listToJSONArray(HashMap<String,Integer> hm) throws SQLException,IOException
		{
		   JSONObject jsonObj = new JSONObject(hm); 
		    
			return jsonObj;
  		}
}



