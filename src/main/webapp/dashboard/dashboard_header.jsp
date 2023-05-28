<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
	String query="select count(userid) from userregistration";
 	ResultSet res=DBConnection.getData(query);  	
 	JSONObject obj=new JSONObject();
 	int count=0;
 	
 	while(res.next())
 	{
 		count=res.getInt("count(userid)"); 		
 		
 		obj.put("userid",count);
 	}   
%>
 	<%=obj.toString()%>
<%
 
 %>