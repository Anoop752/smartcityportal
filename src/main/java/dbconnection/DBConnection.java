package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DBConnection {

	static Connection con = null;
	public static void getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smartcityportal", "root", "root");
			System.out.println("Connected .....");
			//con.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		
	}
	
	public static String saveOrupdate(String query,int userid)
	{
		String msg=null;
		Connection connection=con;
		if(con==null)
		{
			getConnection();
			connection=con;
		}
		try {
			Statement stmt=connection.createStatement();
			if(userid==0&& query.length()>1)
			{
				stmt.execute(query);
				msg=" Data save succesfully";
			}
			else
			{
				stmt.executeUpdate(query);
				msg=" Data upadted succesfully";
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		//ResultSet rs=stmt.executeQuery("select * from emp");  
		
		
		return msg;
		
		
	}
	
	public static ResultSet  getData(String query)
	{
		
		ResultSet res = null;
		Connection connection=con;
		if(con==null)
		{
			getConnection();
			connection=con;
		}
		try {
			Statement stmt=connection.createStatement();
			
				 res= stmt.executeQuery(query);
				
				//msg=" Data save succesfully";
			
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		//ResultSet rs=stmt.executeQuery("select * from emp");  
		
		
		return res;
		
		
	}
	
	
	public static String delete(String query)
	{
		String msg=null;
		Connection connection=con;
		if(con==null)
		{
			getConnection();
			connection=con;
		}
		try {
			Statement stmt=connection.createStatement();			
				stmt.executeUpdate(query);
				msg=" Data deleted succesfully";							
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 								
		return msg;				
	}
	
	
	public static void main(String[] args) {
		
		String q="select id from smartcityportal.pg_likes_info where pg_id='1' and user_id=1";		
		System.out.println(getData(q));
	}
}
//stmt.executeQuery("select * from userregistration");
//System.out.println(stmt);