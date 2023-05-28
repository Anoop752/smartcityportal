<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
    String course_id=request.getParameter("course_id");
	String query="select branch_name,no_of_seat from smartcityportal.courses_branch where course_id='"+course_id+"'";
 	ResultSet res=DBConnection.getData(query);  	
 	JSONArray jsonArray=new JSONArray();	
 	while(res.next())
 	{
 		JSONObject obj=new JSONObject(); 
 		obj.put("branch_name",res.getString("branch_name"));
 		obj.put("no_of_seat",res.getString("no_of_seat"));
 		jsonArray.put(obj);
 	}
%>
 	<%=jsonArray.toString()%>
<%
 
 %>