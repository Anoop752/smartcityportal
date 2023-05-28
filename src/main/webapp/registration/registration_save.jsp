
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String phone=request.getParameter("phone");
		String pass=request.getParameter("pass");
		
			
			
	String query="insert into userregistration(username,useremail,usergender,userphonenumber,userPassword) values('"+name+"','"+email+"','"+gender+"','"+phone+"','"+pass+"') ";
	String msg=DBConnection.saveOrupdate(query, 0);
	
	%>
	
	<%= msg%>
	
	<% 
	

%>    