/**
 * 
 */


var data=sessionStorage.getItem("data");	
var final_data=JSON.parse(data);
setClgOverview();
setCourseDt(final_data.college_id);


function setCourseDt(college_id)
{
	
    	$.ajax(
		{
			url:'engineering_pages/getcourses.jsp',
			data:{"clg_id":college_id},
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);			  						  	  
	          setPieChartData(obj);
	          setCoursesDrp(obj);
	          if(obj.length>0){
	          getBranchDtls(obj[0].course_id);
	          getPlacedDetails(obj[0].course_id);
	          }
	          
			}
		});
	
}

function getPlacedDetails(course_id)
{
  if(course_id==0)
   course_id=$("#pls_std").val();
   
   $.ajax(
		{
			url:'engineering_pages/getplacementdetails.jsp',
			data:{"course_id":course_id},
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);	
			  console.log(obj);	
			  setPlacementData(obj);	  						  	  	          
			}
		});

}

function setPlacementData(res)
{

    var tr_txt='';
    
    for(var i=0;i<res.length;i++)
	{    
	    
	    var bg_clr;
	    if(res[i].placed_std>=90)
	    {
	      bg_clr="bg-success";
	    }
	    if(res[i].placed_std>=70 && res[i].placed_std<90)
	    {
	      bg_clr="bg-primary";
	    }
	    if(res[i].placed_std>=50 && res[i].placed_std<70)
	    {
	      bg_clr="bg-warning";
	    }
	    if(res[i].placed_std<50)
	    {
	      bg_clr="bg-danger";
	    }
	
	    tr_txt+=' <tr>';
		tr_txt+='   <td>'+(i+1)+'</td>';
		tr_txt+='   <td>'+res[i].branch_name+'</td>';
		tr_txt+='   <td>';
		tr_txt+='     <div class="progress progress-xs active ">';
		tr_txt+='       <div class="progress-bar progress-bar-danger '+bg_clr+' " style="width: '+res[i].placed_std+'%"></div>';
		tr_txt+='     </div>';
		tr_txt+='    </td>';
		tr_txt+='   <td><span class="badge '+bg_clr+'">'+res[i].placed_std+'%</span></td>';
		tr_txt+=' </tr>';	
	}
		
	$("#tbl_plc").html(tr_txt);			   
   				   
}


function setCoursesDrp(obj)
{
   
   var opt_txt='';
   for(var i=0;i<obj.length;i++)
   {
     opt_txt+='<option value='+obj[i].course_id+'>'+obj[i].course_name+'</option>';
   }   
   $("#crs_opt").append(opt_txt);
   $("#pls_std").append(opt_txt);
}


function getBranchDtls(course_id)
{
   if(course_id==0)
   course_id=$("#crs_opt").val();
   
   $.ajax(
		{
			url:'engineering_pages/getbranches.jsp',
			data:{"course_id":course_id},
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);				  
			  setBranchDonutData(obj);	  						  	  	          
			}
		});
   
   
}


function setBranchDonutData(res)
{
       
    var seatData=[];	
	for(var i=0;i<res.length;i++)
	{				
		seatData.push(res[i].no_of_seat);
	}	   
    var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
    var donutData        = {
      labels: [
         
          
      ],
      datasets: [
        {
          data: seatData,
          backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef'],
        }
      ]
    }
    
    for(var i=0;i<res.length;i++)
	{				
		donutData.labels.push(res[i].branch_name);
	} 
    
    var donutOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(donutChartCanvas, {
      type: 'doughnut',
      data: donutData,
      options: donutOptions
    })
}

function setPieChartData(res)
{
		
	var seatData=[];	
	for(var i=0;i<res.length;i++)
	{				
		seatData.push(res[i].no_of_seat);
	}		
	var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var donutData        = {
      labels: [          
      ],
      datasets: [
        {
          data:seatData ,
          backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef'],
        }
      ]
    }
    
    for(var i=0;i<res.length;i++)
	{				
		donutData.labels.push(res[i].course_name);
	}    
    
    var pieData        = donutData;
    var pieOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
     new Chart(pieChartCanvas, {
      type: 'pie',
      data: pieData,
      options: pieOptions
    })
} 

function setClgOverview()
{
	
	var txt_html_overview='';
	                    
         txt_html_overview+='  <div class="card card-primary card-outline">';
         txt_html_overview+='    <div class="card-body box-profile">';
         txt_html_overview+='      <div class="text-center">';
         txt_html_overview+='        <img class="profile-user-img img-fluid img-circle"';
         txt_html_overview+='             src='+final_data.college_logo+'';
         txt_html_overview+='             alt="User profile picture">';
         txt_html_overview+='      </div>';
         txt_html_overview+='      <h3 class="profile-username text-center">'+final_data.college_name+'</h3>';
         txt_html_overview+='      <p class="text-muted text-center">'+final_data.college_est_dt+'</p>';
         txt_html_overview+='      <ul class="list-group list-group-unbordered mb-3">';
         txt_html_overview+='      <li class="list-group-item">';
         txt_html_overview+='          <b>College Code</b> <a class="float-right">'+final_data.college_code+'</a>';
         txt_html_overview+='        </li>';
         txt_html_overview+='        <li class="list-group-item">';
         txt_html_overview+='          <b>Followers</b> <a class="float-right">'+final_data.college_follower+'</a>';
         txt_html_overview+='        </li>';
         txt_html_overview+='        <li class="list-group-item">';
         txt_html_overview+='          <b>Rating</b> <a class="float-right">'+final_data.college_rating+' </a>';
         txt_html_overview+='        </li>  ';                
         txt_html_overview+='      </ul>';
         txt_html_overview+='      <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>';
         txt_html_overview+='    </div>';              
         txt_html_overview+='  </div>';            
         txt_html_overview+='  <div class="card card-primary">';
         txt_html_overview+='    <div class="card-header">';
         txt_html_overview+='      <h3 class="card-title">About College</h3>';
         txt_html_overview+='    </div>';              
         txt_html_overview+='    <div class="card-body">';         
         txt_html_overview+='      <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>';
         txt_html_overview+='      <p class="text-muted">'+final_data.college_address+'</p>';
         txt_html_overview+='      <hr>';
         txt_html_overview+='      <strong><i class="fas fa-pencil-alt mr-1"></i> Affiliated TO</strong>';
         txt_html_overview+='      <p class="text-muted">';
         txt_html_overview+='        <span class="tag tag-danger">'+final_data.college_AffiliatedTO+'</span>';                  
         txt_html_overview+='      </p>';
         txt_html_overview+='      <hr>';
         txt_html_overview+='      <strong><i class="far fa-file-alt mr-1"></i> Notes</strong>';
         txt_html_overview+='      <p class="text-muted">'+final_data.college_Notes+'</p>';
         txt_html_overview+='    </div> ';             
         txt_html_overview+='  </div>';            
         txt_html_overview+='  <div id="external-events">';
         if(final_data.is_hostel_pg_avl==1)			        
         txt_html_overview+='          <div class="external-event bg-success">Hostel(BOYS&Girls)</div>';
		 else
		 txt_html_overview+='          <div class="external-event bg-danger">Hostel(BOYS&Girls)</div>';
		 
		 if(final_data.is_wifi_avl==1)		
         txt_html_overview+='          <div class="external-event bg-success">Wi-fi 24 hour</div>';
		 else
		 txt_html_overview+='          <div class="external-event bg-danger">Wi-fi 24 hour</div>';
		 
		 if(final_data.is_library_avl==1)
         txt_html_overview+='          <div class="external-event bg-success">Library</div>';
		 else
		 txt_html_overview+='          <div class="external-event bg-danger">Library</div>';
		 
		 if(final_data.is_skill_development_avl==1)
         txt_html_overview+='          <div class="external-event bg-success">Skill development</div>';
		 else
		 txt_html_overview+='          <div class="external-event bg-danger">Skill development</div>';
		 
		 if(final_data.is_sports_avl==1)		 
         txt_html_overview+='          <div class="external-event bg-success">Sports</div>';
		 else
		 txt_html_overview+='          <div class="external-event bg-danger">Sports</div>';
		 
		 if(final_data.is_culture_avl==1)
         txt_html_overview+='           <div class="external-event bg-success">Culture Events</div>';
		 else		 
         txt_html_overview+='           <div class="external-event bg-danger">Culture Events</div>';
		 if(final_data.is_healthy_campus==1)		 
         txt_html_overview+='          <div class="external-event bg-success">Healthy campus</div>';  
         else
		 txt_html_overview+='          <div class="external-event bg-danger">Healthy campus</div>';                    
         txt_html_overview+='        </div>';
                  
     $("#clg_overview").html(txt_html_overview);
}