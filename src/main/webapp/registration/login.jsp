<%@page import="dbconnection.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%

String email=request.getParameter("email");
String pass=request.getParameter("pass");
String query="select * from userregistration where useremail='"+email+"' and userPassword='"+pass+"' ";
System.out.println(query);
ResultSet resultSet=DBConnection.getData(query);
 int count=0;

 while(resultSet.next())
 {
	 session.setAttribute("userid",resultSet.getInt("userid")); 
	 session.setAttribute("username",resultSet.getString("username")); 
	 count++;
	 break;
 }
 
if(count>=1)
{
	%><%="Login successfully!" %><% 
}
else
{
	%>
	<%="User Id Or Pasword Not Matched:" %>
	<%
}
 

%>    