<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
    String pg_id=request.getParameter("pg_id");
    String user_id=String.valueOf(session.getAttribute("userid"));
	String query="select pg_id, pg_name,pg_address, pg_short_info, pg_single_rent, pg_shared_rent, pg_security_money, pg_contact, pg_details, pg_time, is_food_avl, is_wifi_avl, is_washingmachine_avl, is_electricity_avl, is_ac_room_avl, pg_desc, pg_quote, pg_room_type, pg_owner_name, pg_owner_contact, pgimg, pgimg2, (select count(*) from smartcityportal.pg_likes_info li where li.pg_id=pi.pg_id) as tot_likes,(select count(li.id) from smartcityportal.pg_likes_info  li where li.pg_id=pi.pg_id and li.user_id='"+user_id+"') as is_liked_by_cur_user from smartcityportal.pg_info pi where pi.pg_id='"+pg_id+"'";
 	ResultSet res=DBConnection.getData(query);  	
 	JSONObject obj=new JSONObject(); 	
 	while(res.next())
 	{
 		
 		obj.put("pg_id",res.getString("pg_id"));
 		obj.put("pg_name",res.getString("pg_name")); 
 		obj.put("is_liked_by_cur_user",res.getString("is_liked_by_cur_user")); 		
 		obj.put("pg_short_info",res.getString("pg_short_info")); 
 		obj.put("pg_single_rent",res.getString("pg_single_rent")); 
 		obj.put("pg_shared_rent",res.getString("pg_shared_rent")); 
 		obj.put("pg_security_money",res.getString("pg_security_money")); 
 		obj.put("pg_contact",res.getString("pg_contact")); 
 		obj.put("pg_details",res.getString("pg_details")); 
 		obj.put("pg_time",res.getString("pg_time")); 
 		obj.put("is_food_avl",res.getString("is_food_avl")); 
 		obj.put("is_wifi_avl",res.getString("is_wifi_avl")); 
 		obj.put("is_washingmachine_avl",res.getString("is_washingmachine_avl")); 
 		obj.put("is_electricity_avl",res.getString("is_electricity_avl")); 
 		obj.put("is_ac_room_avl",res.getString("is_ac_room_avl")); 
 		obj.put("pg_desc",res.getString("pg_desc")); 
 		obj.put("pg_quote",res.getString("pg_quote")); 
 		obj.put("pg_room_type",res.getString("pg_room_type")); 
 		obj.put("pg_owner_name",res.getString("pg_owner_name")); 
 		obj.put("pg_owner_contact",res.getString("pg_owner_contact")); 
 		obj.put("pgimg",res.getString("pgimg")); 
 		obj.put("pgimg2",res.getString("pgimg2")); 
 		obj.put("tot_likes",res.getString("tot_likes"));  
 		obj.put("pg_address",res.getString("pg_address"));   		
 	}
%>
 	<%=obj.toString()%>
<%
 
 %>