<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
  String pg_id=request.getParameter("pg_id");
	String query="select file_path from pg_images where pg_id='"+pg_id+"'";
 	ResultSet res=DBConnection.getData(query); 
 	JSONObject obj=new JSONObject();
 	String img="img";
 	int i=1;
 	while(res.next())
 	{
 		 img="img";
 		 img=img+""+i;
 		 obj.put(img,res.getString("file_path")); 	
 		 i++;
 	}
%>
 	<%=obj.toString()%>
<%
 
 %>