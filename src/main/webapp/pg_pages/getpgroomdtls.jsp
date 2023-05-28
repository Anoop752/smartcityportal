<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
    String pg_id=request.getParameter("pg_id");
	String query="select pg_room_id, total_room, available_room, ac_rooms, non_rooms, single_rooms, shared_rooms from smartcityportal.pg_room_details where pg_id='"+pg_id+"'";
 	ResultSet res=DBConnection.getData(query); 
 	JSONObject obj=new JSONObject(); 	 	
 	while(res.next())
 	{ 		 
 		obj.put("pg_room_id",res.getString("pg_room_id")); 
 		obj.put("total_room",res.getString("total_room")); 
 		obj.put("available_room",res.getString("available_room")); 
 		obj.put("ac_rooms",res.getString("ac_rooms")); 
 		obj.put("non_rooms",res.getString("non_rooms")); 
 		obj.put("single_rooms",res.getString("single_rooms")); 
 		obj.put("shared_rooms",res.getString("shared_rooms")); 
 		
 	}
%>
 	<%=obj.toString()%>
<%
 
 %>