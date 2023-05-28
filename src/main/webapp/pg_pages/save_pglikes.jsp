<%@page import="java.sql.ResultSet"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<%
    String msg="";
    String user_id=String.valueOf(session.getAttribute("userid"));
    System.out.println(user_id);    	
    String pg_id=request.getParameter("pg_id");       	
    String chk_query="select * from smartcityportal.pg_likes_info where pg_id='"+pg_id+"' and user_id='"+user_id+"'";
    System.out.println(chk_query);
    ResultSet res=DBConnection.getData(chk_query);  
    int count=0;
    while(res.next())
    {
    	res.getInt("id");
    	count++;
    	break;
    }    
    if(count==0)
    {    
		String query="insert into smartcityportal.pg_likes_info(pg_id,user_id,isLiked,created_ts,modified_ts) values('"+pg_id+"','"+user_id+"','1',now(),now())";
		System.out.println(query);
	    DBConnection.saveOrupdate(query, 0);
	    msg="1";
    }
    else
    {
    	String query="delete from smartcityportal.pg_likes_info where pg_id='"+pg_id+"' and user_id='"+user_id+"'";
    	System.out.println(query);
    	DBConnection.delete(query);
    	msg="0";
    	 
    }

    %>
    <%= msg%>
    <% 
%>    