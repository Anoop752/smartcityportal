
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%
	String dash_user_review=request.getParameter("dash_user_review");									
	String query="insert into user_comment(user_id,user_comment,comment_type,created,modified,createdby,modifiedby) values('"+session.getAttribute("userid")+"','"+dash_user_review+"', 'dashboard',now(),now(),'"+session.getAttribute("userid")+"','"+session.getAttribute("userid")+"')";
	String msg=DBConnection.saveOrupdate(query, 0);
	
	%>
	
	<%= msg%>
	
	<% 
	

%>    