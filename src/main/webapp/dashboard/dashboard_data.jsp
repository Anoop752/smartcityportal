<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
	String query="select * from dashboard_info";
 	ResultSet res=DBConnection.getData(query);  	
 	JSONObject obj=new JSONObject();
 	String pg_desc="";
 	String college_desc="";
 	String about_us="";
 	while(res.next())
 	{
 		pg_desc=res.getString("pg_desc"); 		
 		college_desc=res.getString("college_desc");
 		about_us=res.getString("about_us");
 		obj.put("college_desc",college_desc);
 	    obj.put("pg_desc",pg_desc); 		
 		obj.put("about_us",about_us); 	
 	}
%>
 	<%=obj.toString()%>
<%
 
 %>