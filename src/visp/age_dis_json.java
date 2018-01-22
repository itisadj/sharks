package visp;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.*;
import javax.servlet.http.*;

import org.json.JSONObject;

import java.io.*;


public class age_dis_json{

    public age_dis_json()
		{
  		}
    public JSONObject getJSONObject(){
		//dbConnServlet a=new dbConnServlet();
		String sql = "select count(CaseNumber) as c,Date from attacks where Year='2011' group by Date";
		HashMap<String,Integer> hm= new HashMap();
		Connection con=null;
		ResultSet rs=null;
		Statement statement=null;
	        String driver = "com.mysql.jdbc.Driver";
	        String url = "jdbc:mysql://localhost:3306/test";
	        String user = "root";
	        String password = "admin";
			
	        try {
	            Class.forName(driver);
	            con = DriverManager.getConnection(url,user,password);
	            if(con==null)
	                System.out.println("fail connecting to the Database!");
	            statement = con.createStatement();
	            if(statement==null){
	       		 System.out.println("statement!");
	       	 }
	            //sql = "select * from attacks where Year='2011'";
	            rs = statement.executeQuery(sql);
	 if(rs==null){
		 System.out.println("result!");
	 }
		while(rs.next()){
			hm.put(rs.getString("Date"), rs.getInt("c"));
		}
		rs.close();
		con.close();
		statement.close();
	        } catch(ClassNotFoundException e) {   
	            System.out.println("Sorry,can`t find the Driver!");   
	            e.printStackTrace();   
	            } catch(SQLException e) {
	            	System.out.println("Sorry,SQLException!");   
	            e.printStackTrace();  
	            }catch (Exception e) {
	            	System.out.println("Sorry,Exception!");   
	            e.printStackTrace();
	            }
		JSONObject jsonObj = new JSONObject(hm); 
	    
		System.out.println(jsonObj.toString());  
        String content = jsonObj.toString();  
  
        JSONObject jsonObjOutput;  
        
            jsonObjOutput = new JSONObject(content);  
            System.out.println(jsonObjOutput.get("13-May-2011").toString()); 
		
		return jsonObj;
	}
    
    public void getArrays(String str){
    String[][] array = toArray(str);
    
    for (int i = 0; i < array.length; i++) {
        for (int j = 0; j < array[i].length; j++) {
            System.out.print(array[i][j] + " ");
        }
        System.out.println();
    }
}

public  String[][] toArray(String str) {
    String[] split = str.split("\\$");
    String[][] array = new String[split.length][];
    for (int i = 0; i < split.length; i++) {
        array[i] = split[i].split(";");
    }
    return array;
}
    
    
    
//    public void doGet(HttpServletRequest request, HttpServletResponse response)
//    	throws ServletException, IOException {
//    		request.setAttribute("json", getJSONObject());
//    		//PrintWriter out = response.getWriter();
//    		//request.setCharacterEncoding("GB2312");
////    		String name = request.getParameter("name");
////    		String sex = request.getParameter("sex");
////    		String email = request.getParameter("email");
//    }
    
    
    
    public static void main(String args[]) throws SQLException
    {
 	   age_dis_json a=new age_dis_json();
 	   a.getJSONObject();
    }
}