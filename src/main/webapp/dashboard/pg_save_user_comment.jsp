
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%
	String pg_user_review=request.getParameter("pg_user_review");									
	String query="insert into pg_user_comment(pg_user_id,pg_user_comment,pg_comment_type,created,modified,createdby,modifiedby) values('"+session.getAttribute("userid")+"','"+pg_user_review+"', 'dashboard',now(),now(),'"+session.getAttribute("userid")+"','"+session.getAttribute("userid")+"')";
	String msg=DBConnection.saveOrupdate(query, 0);
	
	%>
	
	<%= msg%>
	
	<% 
	

%>    