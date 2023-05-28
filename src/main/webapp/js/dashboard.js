/**
 * 
 */

function getdashboard(){	
$.ajax(
		{
			url:'dashboard/dashboard_data.jsp',
			data:'',
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);			  
	          $("#college_desc").text(obj.college_desc);
			  $("#pg_desc").text(obj.pg_desc);
			  $("#about_us").text(obj.about_us);			
			}
		});
}
	
function getdashboard_comment(){	
$.ajax(
		{
			url:'dashboard/dash_user_review_comment.jsp',
			data:'',
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);			  
	          displayComment(obj);
			}
		});
}
	
function displayComment(obj)
{
	
	var html='';
	$("#dsh_user_cmt").html('');
	console.log(obj);
	for(var i=0;i<obj.length;i++)
	{
		var temp_obj=obj[i];
	
	        if((i+1)%2==0)
				html+='	 <div class="direct-chat-msg right">';
			else
				html+='	 <div class="direct-chat-msg">';
				
            html+='        <div class="direct-chat-infos clearfix">';
            html+='          <span class="direct-chat-timestamp float-right">'+temp_obj.modified+' </span>';
            html+='          <span class="direct-chat-name  float-left">'+temp_obj.username+'</span>';
            html+='        </div> ';           
            html+='        <img class="direct-chat-img" src="dist/img/chat_img.jpg" alt="message user image"> ';           
            html+='        <div class="direct-chat-text">'+temp_obj.user_comment+'';            
            html+='        </div>';      
            html+='      </div>';
    }
  $("#dsh_user_cmt").html(html);
}	
	
	
	
function saveUserComment(){	
	var dash_user_review=$("#dash_user_review").val();
	var obj={};	
	obj.dash_user_review=dash_user_review;
$.ajax(
		{
			url:'dashboard/dash_save_user_comment.jsp',
			data:obj,
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			   alert(res.trim());
			   location.reload();											  	
			}
		});
}
function getpg_comment(){	
$.ajax(
		{
			url:'dashboard/dash_pg_user_review_comment.jsp',
			data:'',
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);			  
	          displayPgComment(obj);
			}
		});
}
function displayPgComment(obj)
{
	
	var html='';
	$("#pg_user_cmt").html('');	
	for(var i=0;i<obj.length;i++)
	{
		var temp_obj=obj[i];
	
	        if((i+1)%2==0)
				html+='	 <div class="direct-chat-msg right">';
			else
				html+='	 <div class="direct-chat-msg">';
				
            html+='        <div class="direct-chat-infos clearfix">';
            html+='          <span class="direct-chat-timestamp float-right">'+temp_obj.modified+' </span>';
            html+='          <span class="direct-chat-name  float-left">'+temp_obj.username+'</span>';
            html+='        </div> ';           
            html+='        <img class="direct-chat-img" src="dist/img/chat_img.jpg" alt="message user image"> ';           
            html+='        <div class="direct-chat-text">'+temp_obj.pg_user_comment+'';            
            html+='        </div>';      
            html+='      </div>';
    }
  $("#pg_user_cmt").html(html);
}
function savePgComment(){	
	var pg_user_review=$("#pg_user_review").val();
	var obj={};	
	obj.pg_user_review=pg_user_review;
$.ajax(
		{
			url:'dashboard/pg_save_user_comment.jsp',
			data:obj,
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			   alert(res.trim());
			   location.reload();
			    
			   					  	
			}
		});
}


function getdashboard_header(){	
$.ajax(
		{
			url:'dashboard/dashboard_header.jsp',
			data:'',
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);			  
	           $("#user_regis").text(obj.userid);
	           
	           
			}
		});
}

function getNumber_Of_College(){	
$.ajax(
		{
			url:'dashboard/get_number_of_college.jsp',
			data:'',
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	  
			      var obj=JSON.parse(res);
			     			  
	              $("#Number_of_College").text(obj.college_id);
	           
	           
			}
		});
}

function getNumber_Of_PG(){	
$.ajax(
		{
			url:'dashboard/get_no_of_pg.jsp',
			data:'',
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	  
			      var obj=JSON.parse(res);
			     			  
	              $("#number_of_pg").text(obj.pg_id);
	           
	           
			}
		});
}


function getNumber_Of_Unique_Visitor(){	
$.ajax(
		{
			url:'dashboard/get_unique_visitor.jsp',
			data:'',
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	  
			      var obj=JSON.parse(res);
			     			  
	              $("#unique_visitor").text(obj.user_comment_id);
	           
	           
			}
		});
}


