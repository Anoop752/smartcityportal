<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
    String course_id=request.getParameter("course_id");
	String query="SELECT (select  cb.branch_name  from courses_branch cb where cb.branch_id= ps.branch_id) as branch_name,ps.placed_std FROM smartcityportal.palacement_statistics ps where ps.course_id='"+course_id+"'";
 	ResultSet res=DBConnection.getData(query);  	
 	JSONArray jsonArray=new JSONArray();	
 	System.out.println("res "+ res);
 	while(res.next())
 	{
 		JSONObject obj=new JSONObject(); 
 		obj.put("branch_name",res.getString("branch_name"));
 		obj.put("placed_std",res.getString("placed_std"));
 		jsonArray.put(obj);
 	}
%>
 	<%=jsonArray.toString()%>
<%
 
 %>