<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import="dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
	String query="SELECT CI.college_id, CI.college_name, CI.college_short_desc, CI.contact, CI.college_address, CI.college_code, CI.college_follower, CI.college_rating, CI.college_AffiliatedTO, CI.college_Notes, CI.is_hostel_pg_avl, CI.is_wifi_avl, CI.is_library_avl, CI.is_skill_development_avl, CI.is_sports_avl, CI.is_culture_avl, CI.is_healthy_campus,CI.college_est_dt,CI.college_logo FROM smartcityportal.college_info CI ";
 	ResultSet res=DBConnection.getData(query);  	
 	JSONArray jsonArray=new JSONArray();	
 	while(res.next())
 	{
 		JSONObject obj=new JSONObject(); 
 		obj.put("college_id",res.getString("college_id"));
 		obj.put("college_logo",res.getString("college_logo")); 		
 		obj.put("college_name",res.getString("college_name")); 
 		obj.put("college_short_desc",res.getString("college_short_desc")); 
 		obj.put("contact",res.getString("contact")); 
 		obj.put("college_address",res.getString("college_address")); 
 		obj.put("college_code",res.getString("college_code")); 
 		obj.put("college_follower",res.getString("college_follower")); 
 		obj.put("college_rating",res.getString("college_rating")); 
 		obj.put("college_AffiliatedTO",res.getString("college_AffiliatedTO")); 
 		obj.put("college_Notes",res.getString("college_Notes")); 
 		obj.put("is_hostel_pg_avl",res.getString("is_hostel_pg_avl")); 
 		obj.put("is_wifi_avl",res.getString("is_wifi_avl")); 
 		obj.put("is_library_avl",res.getString("is_library_avl")); 
 		obj.put("is_skill_development_avl",res.getString("is_skill_development_avl")); 
 		obj.put("is_sports_avl",res.getString("is_sports_avl")); 
 		obj.put("is_culture_avl",res.getString("is_culture_avl")); 
 		obj.put("is_healthy_campus",res.getString("is_healthy_campus")); 
 		obj.put("college_est_dt",res.getString("college_est_dt")); 
 		jsonArray.put(obj);
 	}
%>
 	<%=jsonArray.toString()%>
<%
 
 %>