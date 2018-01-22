package visp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.TreeSet;

import org.json.JSONObject;

public class yeararray {

	public yeararray()
	{
		}
public String getString(){
	//dbConnServlet a=new dbConnServlet();
	String sql_a = "select count(*) as c,MONTH(Day) as month, Year from date group by Year,month;";
	String rsstrye;
	String rsstrcount;
	String rsstr;
	rsstrye="";
	rsstrcount="count";
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
            rs = statement.executeQuery(sql_a);
            if(rs==null){
	               System.out.println("result!");
             }
        int ye;
        int mon;
        int count;
        TreeSet treeset_year=new TreeSet();
	while(rs.next()){
		ye=rs.getInt("year");
		mon=rs.getInt("month");
		count=rs.getInt("c");
		treeset_year.add(ye);
		rsstrye=rsstrye+ye+",";
		rsstrcount=rsstrcount+count+",";
	}
	for(int i=0;i<treeset_year.size();i++){
		//rsstrye=rsstrye+treeset_year.+",";
	}
	
	rs.close();
	con.close();
	statement.close();
        } catch(ClassNotFoundException ex) {   
            System.out.println("Sorry,can`t find the Driver!");   
            ex.printStackTrace();   
            } catch(SQLException ex) {
            	System.out.println("Sorry,SQLException!");   
            ex.printStackTrace();  
            }catch (Exception ex) {
            	System.out.println("Sorry,Exception!");   
            ex.printStackTrace();
            }
        rsstrye = rsstrye.substring(0,rsstrye.length()-1);
        rsstrcount = rsstrcount.substring(0,rsstrcount.length()-1);
	rsstr=rsstrye+rsstrcount;
	System.out.println(rsstr);
	return rsstr;
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



//public void doGet(HttpServletRequest request, HttpServletResponse response)
//	throws ServletException, IOException {
//		request.setAttribute("json", getJSONObject());
//		//PrintWriter out = response.getWriter();
//		//request.setCharacterEncoding("GB2312");
////		String name = request.getParameter("name");
////		String sex = request.getParameter("sex");
////		String email = request.getParameter("email");
//}



public static void main(String args[]) throws SQLException
{
	  yeararray a=new yeararray();
	   a.getString();
}
}
