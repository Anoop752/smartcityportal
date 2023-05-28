/**
 * 
 */

var global_data;
function getCollegeDetails(){	
$.ajax(
		{
			url:'engineering_pages/getallengineering_clg.jsp',
			data:'',
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);
			
			  setCollegeOverData(obj);			  
	          		
			}
		});
}

function setCollegeOverData(arr)
{ 
global_data=arr;
 var html_txt='';
 for(var i=0;i<arr.length;i++){
	var obj=arr[i];
	

 html_txt+='<section class="content">';
 html_txt+='   <div class="container-fluid">';
 html_txt+='     <div class="row">';
 html_txt+='       <div class="col-12">';
 html_txt+='         <div class="card">';
 html_txt+='           <div class="card-header">';
 html_txt+='            <img border="0" class="img-responsive" alt="Abes Engineering College" src='+obj.college_logo+' />';
 html_txt+='             <h3 class="card-title"></h3>';
 html_txt+='             <div class="card-tools">';
 html_txt+='               <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">';
 html_txt+='                 <i class="fas fa-minus"></i>';
 html_txt+='               </button>';
 html_txt+='               <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">';
 html_txt+='                 <i class="fas fa-times"></i>';
 html_txt+='               </button>';
 html_txt+='             </div>';
 html_txt+='           </div>';
 html_txt+='           <div class="card-body">';
 html_txt+='           <ol class="breadcrumb float-sm-right">';
 html_txt+='              <li class="breadcrumb-item"><a href="javascript:void(0)" onclick="viewAllDetails('+obj.college_id+')">For More Information</a></li>';
 html_txt+='              </ol>';
 html_txt+='             <h3>'+obj.college_name+'</h3>';
 html_txt+='             <p>'+obj.college_short_desc+'</p>';
 html_txt+='              <p><span class="fa fa-phone"></span>'+obj.contact+'</p>';
 html_txt+='           </div>';
 html_txt+='           <div class="card-footer">';
 html_txt+='            <p> <span class="fa fa-map-marker">'+obj.college_address+'</span><p>';
 html_txt+='           </div>';
 html_txt+='         </div>';
 html_txt+='       </div>';
 html_txt+='     </div>';
 html_txt+='   </div>';
 html_txt+=' </section>';
  }  
$("#m_section").after(html_txt);
    
}

function viewAllDetails(college_id)
{    
  var curr_obj;
  for(var i=0;i<global_data.length;i++)
  {     
     if(global_data[i].college_id==college_id)
     {
       curr_obj=global_data[i];
       break;
     }
  }  
  sessionStorage.removeItem("data");
  sessionStorage.setItem("data",JSON.stringify(curr_obj));  
  location.href="engpagedetails.jsp";
}