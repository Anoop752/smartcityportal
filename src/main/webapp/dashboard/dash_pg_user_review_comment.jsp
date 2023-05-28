<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
	String query="select (select u.username from userregistration u where u.userid=uc.pg_user_id) as 'username',uc.pg_user_id,DATE_FORMAT(uc.modified, '%Y-%M-%D') as 'modified',uc.pg_user_comment from pg_user_comment uc where uc.pg_comment_type='dashboard' order by  pg_user_comment_id desc limit 3";

 	ResultSet res=DBConnection.getData(query);  	
 	JSONArray jsonArray=new JSONArray(); 	
 	while(res.next())
 	{ 		
 		JSONObject obj=new JSONObject();
 		obj.put("pg_user_id",res.getInt("pg_user_id"));
 	    obj.put("pg_user_comment",res.getString("pg_user_comment")); 		
 		obj.put("username",res.getString("username"));
 		obj.put("modified",res.getString("modified"));
 		jsonArray.put(obj);
 	}
%>
 	<%=jsonArray.toString()%>
<%
 
 %>