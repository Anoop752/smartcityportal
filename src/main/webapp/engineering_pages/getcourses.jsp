<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
    String clg_id=request.getParameter("clg_id");
	String query="select college_id, course_id,course_code,course_name,no_of_seat from smartcityportal.college_courses where college_id='"+clg_id+"'";
 	ResultSet res=DBConnection.getData(query);  	
 	JSONArray jsonArray=new JSONArray();	
 	while(res.next())
 	{
 		JSONObject obj=new JSONObject(); 
 		obj.put("college_id",res.getString("college_id")); 
 		obj.put("no_of_seat",res.getString("no_of_seat")); 
 		obj.put("course_id",res.getString("course_id")); 
 		obj.put("course_code",res.getString("course_code")); 
 		obj.put("course_name",res.getString("course_name"));  		 
 		jsonArray.put(obj);
 	}
%>
 	<%=jsonArray.toString()%>
<%
 
 %>