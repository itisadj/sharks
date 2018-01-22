package visp;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.*;
import javax.servlet.http.*;

import org.json.JSONObject;

import java.io.*;

public class Main {
   public static void main(String args[]) throws SQLException
   {
	   age_dis_json a=new age_dis_json();
	   a.getJSONObject();
   }
}
