<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
	String query="select (select u.username from userregistration u where u.userid=uc.user_id) as 'username',uc.user_id,DATE_FORMAT(uc.modified, '%Y-%M-%D %H:%i:%S') as 'modified',uc.user_comment from user_comment uc where uc.comment_type='dashboard' order by  user_comment_id desc limit 3";
 	ResultSet res=DBConnection.getData(query);  	
 	JSONArray jsonArray=new JSONArray(); 	
 	while(res.next())
 	{ 		
 		JSONObject obj=new JSONObject();
 		obj.put("user_id",res.getInt("user_id"));
 	    obj.put("user_comment",res.getString("user_comment")); 		
 		obj.put("username",res.getString("username"));
 		obj.put("modified",res.getString("modified"));
 		jsonArray.put(obj);
 	}
%>
 	<%=jsonArray.toString()%>
<%
 
 %>