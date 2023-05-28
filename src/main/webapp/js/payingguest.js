getAllPGDetails();
function getAllPGDetails()
{
   $.ajax(
		{
			url:'pg_pages/getallpgdetails.jsp',
			data:'',
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);			  
			  setPGOverviewData(obj);			  
	          		
			}
		});


}

function setPGOverviewData(arr)
{
	var html_txt='';
 	for(var i=0;i<arr.length;i++)
 	{
		var obj=arr[i];
         html_txt+='<section class="content">';
		 html_txt+='    <div class="container-fluid">';
		 html_txt+='      <div class="row">';
		 html_txt+='        <div class="col-12"> ';           
		 html_txt+='           <div class="card">';
		 html_txt+='            <div class="card-header">';
		 html_txt+='            <div class="card-tools">';
		 html_txt+='                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">';
		 html_txt+='                  <i class="fas fa-minus"></i>';
		 html_txt+='                </button>';
		 html_txt+='                <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">';
		 html_txt+='                  <i class="fas fa-times"></i>';
		 html_txt+='                </button>';
		 html_txt+='              </div>';
		 html_txt+='              <div class="row">';
		 html_txt+='             <img border="0" class="img-responsive" alt="PG In Ghaziabad" src='+obj.pgimg+'>';
		 html_txt+='             <img border="0" class="img-responsive" alt="PG In Ghaziabad" src='+obj.pgimg2+'>';
		 html_txt+='              <div class="col-md-3 col-sm-6 col-12">';
		 html_txt+='            <div class="info-box">';
		 if(obj.is_liked_by_cur_user==0)
		 	html_txt+='            <span class="info-box-icon bg-danger" onclick="chglikes('+obj.pg_id+',this)" ><i class="far fa-star"></i></span>';
		 else
		 	html_txt+='            <span class="info-box-icon bg-success" onclick="chglikes('+obj.pg_id+',this)" ><i class="far fa-star"></i></span>';	
		 html_txt+='            <div class="info-box-content">';
		 html_txt+='              <span class="info-box-text">Likes</span>';
		 html_txt+='              <span class="info-box-number">'+obj.tot_likes+'</span>';
		 html_txt+='            </div>';              
		 html_txt+='          </div>';            
		 html_txt+='          <div class="info-box shadow">';
		 html_txt+='            <span class="info-box-icon bg-warning"><i class="far fa-clock"></i></span>';
		 html_txt+='            <div class="info-box-content">';
		 html_txt+='              <span class="info-box-text">Closing Time</span>';
		 html_txt+='              <span class="info-box-number">'+obj.pg_time+'</span>';
		 html_txt+='            </div>';              
		 html_txt+='          </div>';
		 html_txt+='        </div>'; 
		 html_txt+='              <div id="external-events">';
		 
		 if(obj.is_food_avl==1)
			html_txt+='                  <div class="external-event bg-success">3 time food</div>';
		 else
			html_txt+='                  <div class="external-event bg-danger">3 time food</div>';
		 
		 if(obj.is_wifi_avl==1)
			html_txt+='                  <div class="external-event bg-success">Wi-fi 24 hour</div>';
		 else
			html_txt+='                  <div class="external-event bg-danger">Wi-fi 24 hour</div>';
		 
		 if(obj.is_washingmachine_avl==1)
			html_txt+='                  <div class="external-event bg-success">Washing Machine</div>';
		 else
		    html_txt+='                  <div class="external-event bg-danger">Washing Machine</div>';
		 if(obj.is_electricity_avl==1)
			html_txt+='                  <div class="external-event bg-success">24 hour electricity</div>';
		 else
			html_txt+='                  <div class="external-event bg-danger">24 hour electricity</div>';
			
		 if(obj.is_ac_room_avl==1)	
			html_txt+='                  <div class="external-event bg-success">AC/Non AC Rooms</div>'; 
		 else
		    html_txt+='                  <div class="external-event bg-danger">AC/Non AC Rooms</div>';  
		 
		 html_txt+='                </div>';
		 html_txt+='             </div>'; 
		 html_txt+='            </div>';
		 html_txt+='            <div class="card-body">';
		 html_txt+='            <ol class="breadcrumb float-sm-right">';
		 html_txt+='               <li class="breadcrumb-item"><a href="javascript:void(0)" onclick="loadFullPgDetails('+obj.pg_id+')">For More Information</a></li>';
		 html_txt+='               </ol>';
		 html_txt+='              <h3>'+obj.pg_name+'</h3>';
		 html_txt+='              <p>'+obj.pg_short_info+'</p>';
		 html_txt+='             <p>Rent:-'+obj.pg_single_rent+'/bed</p>';
		 html_txt+='               <p><span class="fa fa-phone"></span>Phone: '+obj.pg_contact+'</p> ';                
		 html_txt+='            </div>';              
		 html_txt+='            <div class="card-footer">';
		 html_txt+='             <p> <span class="fa fa-map-marker"></span>'+obj.pg_address+'<p>';
		 html_txt+='            </div>';              
		 html_txt+='          </div>';
		 html_txt+='        </div>';
		 html_txt+='      </div>';
		 html_txt+='    </div>';
		 html_txt+=' </section>';
		    
             		
    }

 		$("#header_sec").after(html_txt);
 		
}

function chglikes(pg_id,element_obj)
{
   saveOrDeletePgLikes(pg_id,element_obj);
}



//

//saving pg like details
function saveOrDeletePgLikes(pg_id,element_obj)
{
	$.ajax(
		{
			url:'pg_pages/save_pglikes.jsp',
			data:{"pg_id":pg_id},
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
				console.log("data processed..."+ res);
				alert("Likes updated...");
				location.reload();							  				  			  	          		
			}
		});

}

function loadFullPgDetails(pg_id)
{
   location.href="pgdetails.jsp?pg_id="+pg_id;
}

function readPgId()
{
	var urlString=window.location.href;
	let paramString = urlString.split('?')[1];
	let queryString = new URLSearchParams(paramString);

	for (let pair of queryString.entries()) {	   
	   setFullPGDetails(pair[1]);
	   break;
	}	
}

function setFullPGDetails(pg_id)
{   
  $.ajax(
		{
			url:'pg_pages/getallpgdetailsbyid.jsp',
			data:{"pg_id":pg_id},
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			  var obj=JSON.parse(res);	
			  
			  var img_res_obj=getAllPgImgDtls(obj.pg_id);
			  var room_dtls=getAllPgRoomDtls(obj.pg_id);				    			  
			  loadPgDetailsWithData(obj,img_res_obj,room_dtls);	
			  console.log(room_dtls);	
			  	  		  	          		
			}
		});   
}

function loadPgDetailsWithData(obj,img_res_obj,room_dtls)
{
    var html_txt='';
    html_txt+=' <div class="row">																								';
    html_txt+='        <div class="col-12 col-sm-6">                                                                            ';
    html_txt+='          <h3 class="d-inline-block d-sm-none">LOWA Men Renegade GTX Mid Hiking Boots Review</h3>                ';
    html_txt+='          <div class="col-12">                                                                                   ';
    html_txt+='            <img src='+img_res_obj.img1+' class="product-image" alt="Product Image">                             ';
    html_txt+='          </div>                                                                                                 ';
    html_txt+='          <div class="col-12 product-image-thumbs">                                                              ';
    html_txt+='            <div class="product-image-thumb active"><img src='+img_res_obj.img1+' alt="Product Image"></div>     ';
    html_txt+='            <div class="product-image-thumb" ><img src='+img_res_obj.img2+' alt="Product Image"></div>           ';
    html_txt+='            <div class="product-image-thumb" ><img src='+img_res_obj.img3+' alt="Product Image"></div>          ';
    html_txt+='            <div class="product-image-thumb" ><img src='+img_res_obj.img4+' alt="Product Image"></div>           ';
    html_txt+='            <div class="product-image-thumb" ><img src='+img_res_obj.img5+' alt="Product Image"></div>           ';
    html_txt+='          </div>                                                                                                 ';
    html_txt+='        </div>                                                                                                   ';
    html_txt+='        <div class="col-12 col-sm-6">                                                                            ';
    html_txt+='          <h3 class="my-3">'+obj.pg_quote+'</h3>                                                     ';
    html_txt+='          <p>'+obj.pg_details+'</p>                                                                              ';	
    html_txt+='          <hr>                                                                                                   ';
    html_txt+='          <h4 class="mt-3">Room Type <small></small></h4>                                                        ';
    html_txt+='          <div class="btn-group btn-group-toggle" data-toggle="buttons">                                         ';
    html_txt+='            <label class="btn btn-default bg-success text-center">                                                          ';
    html_txt+='              <input type="radio" name="color_option" id="color_option_b1" autocomplete="off">                   ';    
    html_txt+='              Single                                                                                             ';
    html_txt+='            </label>                                                                                             ';
    if(obj.pg_room_type>1)
    html_txt+='            <label class="btn btn-default bg-success text-center">                                                          ';
    else
    html_txt+='            <label class="btn btn-default text-center">                                                          ';
    html_txt+='              <input type="radio" name="color_option" id="color_option_b2" autocomplete="off">                   ';    
    html_txt+='              Shared                                                                                             ';
    html_txt+='            </label>                                                                                             ';
    html_txt+='                                                                                                                 ';
    html_txt+='          </div>                                                                                                 ';
	html_txt+='                                                                                                                 ';
    html_txt+='          <div class="bg-gray py-2 px-3 mt-4">                                                                   ';
    html_txt+='          <h4 class="mt-0">                                                                                      ';
    html_txt+='              <small>Rent:- </small>                                                                             ';
    html_txt+='            </h4>                                                                                                ';
    html_txt+='            <h2 class="mb-0">                                                                                    ';
    html_txt+='              Rs '+obj.pg_single_rent+' /bed(For Single)                                                                           ';
    html_txt+='            </h2>                                                                                                ';
    html_txt+='            <small>Rent:- </small>                                                                               ';
    html_txt+='            </h4>                                                                                                ';
    html_txt+='            <h2 class="mb-0">                                                                                    ';
    html_txt+='              Rs '+obj.pg_shared_rent+' /bed(For Shared)                                                                           ';
    html_txt+='            </h2>                                                                                                ';
    html_txt+='                                                                                                                 ';
    html_txt+='          </div>                                                                                                 ';
	html_txt+='                                                                                                                 ';
    html_txt+='          <div class="mt-4">                                                                                     ';
    html_txt+='            <strong>Security Money:- </strong>                                                                   ';
    html_txt+='            </h4>                                                                                                ';
    html_txt+='            <h2 class="mb-0">                                                                                    ';
    html_txt+='              Rs '+obj.pg_security_money+'                                                                                            ';
    html_txt+='            </h2>                                                                                                ';
    html_txt+='                                                                                                                 ';
    html_txt+='          </div>                                                                                                 ';
	html_txt+='                                                                                                                 ';
    html_txt+='          <div class="mt-4 product-share">                                                                       ';
    html_txt+='                                                                                                                 ';
    html_txt+='          </div>                                                                                                 ';
	html_txt+='                                                                                                                 ';
    html_txt+='        </div>                                                                                                   ';
    html_txt+='      </div>                                                                                                     ';
    html_txt+='                                                                                                                 ';
    html_txt+=' <div class="row mt-4">																																													  ';
	   html_txt+='         <nav class="w-100">                                                                                                                                                                                ';
	   html_txt+='           <div class="nav nav-tabs" id="product-tab" role="tablist">                                                                                                                                       ';
	   html_txt+='             <a class="nav-item nav-link" id="product-desc-tab" data-toggle="tab" href="#product-desc" role="tab" aria-controls="product-desc" aria-selected="true">PG ON ONEVIEW</a>                       ';
	   html_txt+='             <a class="nav-item nav-link" id="product-comments-tab" data-toggle="tab" href="#product-comments" role="tab" aria-controls="product-comments" aria-selected="false">Contact To Owner</a>       ';
	   html_txt+='             <a class="nav-item nav-link" id="product-rating-tab" data-toggle="tab" href="#product-rating" role="tab" aria-controls="product-rating" aria-selected="false">USER Comments</a>                ';
	   html_txt+='           </div>                                                                                                                                                                                           ';
	   html_txt+='         </nav>                                                                                                                                                                                             ';
	   html_txt+='         <div class="tab-content p-3" id="nav-tabContent">                                                                                                                                                  ';
	   html_txt+='           <div class="tab-pane fade show active" id="product-desc" role="tabpanel" aria-labelledby="product-desc-tab">                                                                                     ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='     <div class="row">                                                                                                                                                                                      ';
	   html_txt+='       <div class="col-12">                                                                                                                                                                                 ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='         <div class="card">                                                                                                                                                                                 ';
	   html_txt+='           <div class="card-header">                                                                                                                                                                        ';
	   html_txt+='             <h3 class="card-title">                                                                                                                                                                        ';
	   html_txt+='               <i class="far fa-chart-bar"></i>                                                                                                                                                             ';
	   html_txt+='               PG ON ONEVIEW                                                                                                                                                                                ';
	   html_txt+='             </h3>                                                                                                                                                                                          ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='           </div>                                                                                                                                                                                           ';
	   html_txt+='           <!-- /.card-header -->                                                                                                                                                                           ';
	   html_txt+='           <div class="card-body">                                                                                                                                                                          ';
	   html_txt+='             <div class="row">                                                                                                                                                                              ';
	   html_txt+='               <div class="col-6 col-md-3 text-center">                                                                                                                                                     ';
	   html_txt+='                 <input type="text" readonly class="knob" id="total_room" value='+room_dtls.total_room+' data-width="90" data-height="90" data-fgColor="#3c8dbc">                                                                       ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                 <div class="knob-label">Toatal Rooms</div>                                                                                                                                                 ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- ./col -->                                                                                                                                                                               ';
	   html_txt+='               <div class="col-6 col-md-3 text-center">                                                                                                                                                     ';
	   html_txt+='                 <input type="text" readonly class="knob" value='+room_dtls.available_room+' id="available_room"data-width="90" data-height="90" data-fgColor="#f56954">                                                                     ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                 <div class="knob-label">Avialable Room</div>                                                                                                                                               ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- ./col -->                                                                                                                                                                               ';
	   html_txt+='               <div class="col-6 col-md-3 text-center">                                                                                                                                                     ';
	   html_txt+='                 <input type="text" readonly class="knob" value='+room_dtls.ac_rooms+' id="ac_room" data-min="-150" data-max="150" data-width="90"                                                                                      ';
	   html_txt+='                        data-height="90" data-fgColor="#00a65a">                                                                                                                                            ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                 <div class="knob-label">AC Rooms</div>                                                                                                                                                     ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- ./col -->                                                                                                                                                                               ';
	   html_txt+='               <div class="col-6 col-md-3 text-center">                                                                                                                                                     ';
	   html_txt+='                 <input type="text" readonly class="knob" value='+room_dtls.non_rooms+' id="non_acroom"data-width="90" data-height="90" data-fgColor="#00c0ef">                                                                         ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                 <div class="knob-label">Non AC Rooms</div>                                                                                                                                                 ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- ./col -->                                                                                                                                                                               ';
	   html_txt+='             </div>                                                                                                                                                                                         ';
	   html_txt+='             <!-- /.row -->                                                                                                                                                                                 ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='             <div class="row">                                                                                                                                                                              ';
	   html_txt+='               <div class="col-6 text-center">                                                                                                                                                              ';
	   html_txt+='                 <input type="text" readonly class="knob" value='+room_dtls.single_rooms+' id="single_room" data-width="90" data-height="90" data-fgColor="#932ab6">                                                                       ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                 <div class="knob-label">Single rooms</div>                                                                                                                                                 ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- ./col -->                                                                                                                                                                               ';
	   html_txt+='               <div class="col-6 text-center">                                                                                                                                                              ';
	   html_txt+='                 <input type="text" readonly class="knob" value='+room_dtls.shared_rooms+' id="shared_room" data-width="90" data-height="90" data-fgColor="#39CCCC">                                                                       ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                 <div class="knob-label">Shared Rooms</div>                                                                                                                                                 ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- ./col -->                                                                                                                                                                               ';
	   html_txt+='             </div>                                                                                                                                                                                         ';
	   html_txt+='             <!-- /.row -->                                                                                                                                                                                 ';
	   html_txt+='           </div>                                                                                                                                                                                           ';
	   html_txt+='           <!-- /.card-body -->                                                                                                                                                                             ';
	   html_txt+='         </div>                                                                                                                                                                                             ';
	   html_txt+='         <!-- /.card -->                                                                                                                                                                                    ';
	   html_txt+='       </div>                                                                                                                                                                                               ';
	   html_txt+='       <!-- /.col -->                                                                                                                                                                                       ';
	   html_txt+='     </div>                                                                                                                                                                                                 ';
	   html_txt+='     <!-- /.row -->                                                                                                                                                                                         ';
	   html_txt+='	</div>                                                                                                                                                                                                    ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='           <div class="tab-pane fade" id="product-comments" role="tabpanel" aria-labelledby="product-comments-tab">                                                                                         ';
	   html_txt+='           <div class="card-body pt-0">                                                                                                                                                                     ';
	   html_txt+='               <div class="row">                                                                                                                                                                            ';
	   html_txt+='                 <div class="col-7">                                                                                                                                                                        ';
	   html_txt+='                   <h2 class="lead"><b>'+obj.pg_owner_name+'</b></h2>                                                                                                                                          ';
	   html_txt+='                   <p class="text-muted text-sm"><b>About: </b> PG Owner </p>                                                                                                                               ';
	   html_txt+='                   <ul class="ml-4 mb-0 fa-ul text-muted">                                                                                                                                                  ';
	   html_txt+='                     <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: '+obj.pg_address+'</li>                                            ';
	   html_txt+='                     <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Mobile No: '+obj.pg_owner_contact+'</li>                                                                  ';
	   html_txt+='                   </ul>                                                                                                                                                                                    ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='                 <div class="col-5 text-center">                                                                                                                                                            ';
	   html_txt+='                   <img src="dist/img/pg_owner_img.jpg" alt="user-avatar" class="img-circle img-fluid" width="150" height="150">                                                                                  ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='             </div></div>                                                                                                                                                                                   ';
	   html_txt+='           <div class="tab-pane fade" id="product-rating" role="tabpanel" aria-labelledby="product-rating-tab">                                                                                             ';
	   html_txt+='          <div class="card direct-chat direct-chat-primary">                                                                                                                                                ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='           </div>                                                                                                                                                                                           ';
	   html_txt+='           <!-- /.card-header -->                                                                                                                                                                           ';
	   html_txt+='           <div class="card-body" id="pg_user_cmt">                                                                                                                                                         ';
	   html_txt+='             <!-- Conversations are loaded here -->                                                                                                                                                         ';
	   html_txt+='             <div class="direct-chat-messages">                                                                                                                                                             ';
	   html_txt+='               <!-- Message. Default to the left -->                                                                                                                                                        ';
	   html_txt+='               <div class="direct-chat-msg">                                                                                                                                                                ';
	   html_txt+='                 <div class="direct-chat-infos clearfix">                                                                                                                                                   ';
	   html_txt+='                   <span class="direct-chat-name float-left">Anoop shukla</span>                                                                                                                            ';
	   html_txt+='                   <span class="direct-chat-timestamp float-right">23 Jan 2:00 pm</span>                                                                                                                    ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='                 <!-- /.direct-chat-infos -->                                                                                                                                                               ';
	   html_txt+='                 <img class="direct-chat-img" src="dist/img/Anoop.jpeg" alt="message user image">                                                                                                           ';
	   html_txt+='                 <!-- /.direct-chat-img -->                                                                                                                                                                 ';
	   html_txt+='                 <div class="direct-chat-text">                                                                                                                                                             ';
	   html_txt+='                   Is this template really for free? Thats unbelievable!                                                                                                                                   ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='                 <!-- /.direct-chat-text -->                                                                                                                                                                ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- /.direct-chat-msg -->                                                                                                                                                                   ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='               <!-- Message to the right -->                                                                                                                                                                ';
	   html_txt+='               <div class="direct-chat-msg right">                                                                                                                                                          ';
	   html_txt+='                 <div class="direct-chat-infos clearfix">                                                                                                                                                   ';
	   html_txt+='                   <span class="direct-chat-name float-right">Sarah Bullock</span>                                                                                                                          ';
	   html_txt+='                   <span class="direct-chat-timestamp float-left">23 Jan 2:05 pm</span>                                                                                                                     ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='                 <!-- /.direct-chat-infos -->                                                                                                                                                               ';
	   html_txt+='                 <img class="direct-chat-img" src="dist/img/user3-128x128.jpg" alt="message user image">                                                                                                    ';
	   html_txt+='                 <!-- /.direct-chat-img -->                                                                                                                                                                 ';
	   html_txt+='                 <div class="direct-chat-text">                                                                                                                                                             ';
	   html_txt+='                   You better believe it!                                                                                                                                                                   ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='                 <!-- /.direct-chat-text -->                                                                                                                                                                ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- /.direct-chat-msg -->                                                                                                                                                                   ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='               <!-- Message. Default to the left -->                                                                                                                                                        ';
	   html_txt+='               <div class="direct-chat-msg">                                                                                                                                                                ';
	   html_txt+='                 <div class="direct-chat-infos clearfix">                                                                                                                                                   ';
	   html_txt+='                   <span class="direct-chat-name float-left">Anoop</span>                                                                                                                                   ';
	   html_txt+='                   <span class="direct-chat-timestamp float-right">23 Jan 5:37 pm</span>                                                                                                                    ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='                 <!-- /.direct-chat-infos -->                                                                                                                                                               ';
	   html_txt+='                 <img class="direct-chat-img" src="dist/img/Anoop.jpeg" alt="message user image">                                                                                                           ';
	   html_txt+='                 <!-- /.direct-chat-img -->                                                                                                                                                                 ';
	   html_txt+='                 <div class="direct-chat-text">                                                                                                                                                             ';
	   html_txt+='                   OHH NICE                                                                                                                                                                                 ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='                 <!-- /.direct-chat-text -->                                                                                                                                                                ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- /.direct-chat-msg -->                                                                                                                                                                   ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='               <!-- Message to the right -->                                                                                                                                                                ';
	   html_txt+='               <div class="direct-chat-msg right">                                                                                                                                                          ';
	   html_txt+='                 <div class="direct-chat-infos clearfix">                                                                                                                                                   ';
	   html_txt+='                   <span class="direct-chat-name float-right">Ankit</span>                                                                                                                                  ';
	   html_txt+='                   <span class="direct-chat-timestamp float-left">23 Jan 6:10 pm</span>                                                                                                                     ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='                 <!-- /.direct-chat-infos -->                                                                                                                                                               ';
	   html_txt+='                 <img class="direct-chat-img" src="dist/img/Anoop(2).jpeg" alt="message user image">                                                                                                        ';
	   html_txt+='                 <!-- /.direct-chat-img -->                                                                                                                                                                 ';
	   html_txt+='                 <div class="direct-chat-text">                                                                                                                                                             ';
	   html_txt+='                   I would love to.                                                                                                                                                                         ';
	   html_txt+='                 </div>                                                                                                                                                                                     ';
	   html_txt+='                 <!-- /.direct-chat-text -->                                                                                                                                                                ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='               <!-- /.direct-chat-msg -->                                                                                                                                                                   ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='             </div>                                                                                                                                                                                         ';
	   html_txt+='             <!--/.direct-chat-messages-->                                                                                                                                                                  ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='             <!-- Contacts are loaded here -->                                                                                                                                                              ';
	   html_txt+='             <div class="direct-chat-contacts">                                                                                                                                                             ';
	   html_txt+='               <ul class="contacts-list">                                                                                                                                                                   ';
	   html_txt+='                 <li>                                                                                                                                                                                       ';
	   html_txt+='                   <a href="#">                                                                                                                                                                             ';
	   html_txt+='                     <img class="contacts-list-img" src="dist/img/Anoopshukla.jpg" alt="User Avatar">                                                                                                       ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                     <div class="contacts-list-info">                                                                                                                                                       ';
	   html_txt+='                       <span class="contacts-list-name">                                                                                                                                                    ';
	   html_txt+='                         Vijay                                                                                                                                                                              ';
	   html_txt+='                         <small class="contacts-list-date float-right">2/28/2015</small>                                                                                                                    ';
	   html_txt+='                       </span>                                                                                                                                                                              ';
	   html_txt+='                       <span class="contacts-list-msg">GOOD...</span>                                                                                                                                       ';
	   html_txt+='                     </div>                                                                                                                                                                                 ';
	   html_txt+='                     <!-- /.contacts-list-info -->                                                                                                                                                          ';
	   html_txt+='                   </a>                                                                                                                                                                                     ';
	   html_txt+='                 </li>                                                                                                                                                                                      ';
	   html_txt+='                 <!-- End Contact Item -->                                                                                                                                                                  ';
	   html_txt+='                 <li>                                                                                                                                                                                       ';
	   html_txt+='                   <a href="#">                                                                                                                                                                             ';
	   html_txt+='                     <img class="contacts-list-img" src="dist/img/user7-128x128.jpg" alt="User Avatar">                                                                                                     ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                     <div class="contacts-list-info">                                                                                                                                                       ';
	   html_txt+='                       <span class="contacts-list-name">                                                                                                                                                    ';
	   html_txt+='                         Sarah Doe                                                                                                                                                                          ';
	   html_txt+='                         <small class="contacts-list-date float-right">2/23/2015</small>                                                                                                                    ';
	   html_txt+='                       </span>                                                                                                                                                                              ';
	   html_txt+='                       <span class="contacts-list-msg">I will be waiting for...</span>                                                                                                                      ';
	   html_txt+='                     </div>                                                                                                                                                                                 ';
	   html_txt+='                     <!-- /.contacts-list-info -->                                                                                                                                                          ';
	   html_txt+='                   </a>                                                                                                                                                                                     ';
	   html_txt+='                 </li>                                                                                                                                                                                      ';
	   html_txt+='                 <!-- End Contact Item -->                                                                                                                                                                  ';
	   html_txt+='                 <li>                                                                                                                                                                                       ';
	   html_txt+='                   <a href="#">                                                                                                                                                                             ';
	   html_txt+='                     <img class="contacts-list-img" src="dist/img/user3-128x128.jpg" alt="User Avatar">                                                                                                     ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                     <div class="contacts-list-info">                                                                                                                                                       ';
	   html_txt+='                       <span class="contacts-list-name">                                                                                                                                                    ';
	   html_txt+='                         Nadia Jolie                                                                                                                                                                        ';
	   html_txt+='                         <small class="contacts-list-date float-right">2/20/2015</small>                                                                                                                    ';
	   html_txt+='                       </span>                                                                                                                                                                              ';
	   html_txt+='                       <span class="contacts-list-msg">Ill call you back at...</span>                                                                                                                      ';
	   html_txt+='                     </div>                                                                                                                                                                                 ';
	   html_txt+='                     <!-- /.contacts-list-info -->                                                                                                                                                          ';
	   html_txt+='                   </a>                                                                                                                                                                                     ';
	   html_txt+='                 </li>                                                                                                                                                                                      ';
	   html_txt+='                 <!-- End Contact Item -->                                                                                                                                                                  ';
	   html_txt+='                 <li>                                                                                                                                                                                       ';
	   html_txt+='                   <a href="#">                                                                                                                                                                             ';
	   html_txt+='                     <img class="contacts-list-img" src="dist/img/user5-128x128.jpg" alt="User Avatar">                                                                                                     ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                     <div class="contacts-list-info">                                                                                                                                                       ';
	   html_txt+='                       <span class="contacts-list-name">                                                                                                                                                    ';
	   html_txt+='                         Nora S. Vans                                                                                                                                                                       ';
	   html_txt+='                         <small class="contacts-list-date float-right">2/10/2015</small>                                                                                                                    ';
	   html_txt+='                       </span>                                                                                                                                                                              ';
	   html_txt+='                       <span class="contacts-list-msg">Where is your new...</span>                                                                                                                          ';
	   html_txt+='                     </div>                                                                                                                                                                                 ';
	   html_txt+='                     <!-- /.contacts-list-info -->                                                                                                                                                          ';
	   html_txt+='                   </a>                                                                                                                                                                                     ';
	   html_txt+='                 </li>                                                                                                                                                                                      ';
	   html_txt+='                 <!-- End Contact Item -->                                                                                                                                                                  ';
	   html_txt+='                 <li>                                                                                                                                                                                       ';
	   html_txt+='                   <a href="#">                                                                                                                                                                             ';
	   html_txt+='                     <img class="contacts-list-img" src="dist/img/user6-128x128.jpg" alt="User Avatar">                                                                                                     ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                     <div class="contacts-list-info">                                                                                                                                                       ';
	   html_txt+='                       <span class="contacts-list-name">                                                                                                                                                    ';
	   html_txt+='                         John K.                                                                                                                                                                            ';
	   html_txt+='                         <small class="contacts-list-date float-right">1/27/2015</small>                                                                                                                    ';
	   html_txt+='                       </span>                                                                                                                                                                              ';
	   html_txt+='                       <span class="contacts-list-msg">Can I take a look at...</span>                                                                                                                       ';
	   html_txt+='                     </div>                                                                                                                                                                                 ';
	   html_txt+='                     <!-- /.contacts-list-info -->                                                                                                                                                          ';
	   html_txt+='                   </a>                                                                                                                                                                                     ';
	   html_txt+='                 </li>                                                                                                                                                                                      ';
	   html_txt+='                 <!-- End Contact Item -->                                                                                                                                                                  ';
	   html_txt+='                 <li>                                                                                                                                                                                       ';
	   html_txt+='                   <a href="#">                                                                                                                                                                             ';
	   html_txt+='                     <img class="contacts-list-img" src="dist/img/user8-128x128.jpg" alt="User Avatar">                                                                                                     ';
	   html_txt+='                                                                                                                                                                                                            ';
	   html_txt+='                     <div class="contacts-list-info">                                                                                                                                                       ';
	   html_txt+='                       <span class="contacts-list-name">                                                                                                                                                    ';
	   html_txt+='                         Kenneth M.                                                                                                                                                                         ';
	   html_txt+='                         <small class="contacts-list-date float-right">1/4/2015</small>                                                                                                                     ';
	   html_txt+='                       </span>                                                                                                                                                                              ';
	   html_txt+='                       <span class="contacts-list-msg">Never mind I found...</span>                                                                                                                         ';
	   html_txt+='                     </div>                                                                                                                                                                                 ';
	   html_txt+='                     <!-- /.contacts-list-info -->                                                                                                                                                          ';
	   html_txt+='                   </a>                                                                                                                                                                                     ';
	   html_txt+='                 </li>                                                                                                                                                                                      ';
	   html_txt+='                 <!-- End Contact Item -->                                                                                                                                                                  ';
	   html_txt+='               </ul>                                                                                                                                                                                        ';
	   html_txt+='               <!-- /.contacts-list -->                                                                                                                                                                     ';
	   html_txt+='             </div>                                                                                                                                                                                         ';
	   html_txt+='             <!-- /.direct-chat-pane -->                                                                                                                                                                    ';
	   html_txt+='           </div>                                                                                                                                                                                           ';
	   html_txt+='           <!-- /.card-body -->                                                                                                                                                                             ';
	   html_txt+='           <div class="card-footer">                                                                                                                                                                        ';
	   html_txt+='             <form action="#" method="post">                                                                                                                                                                ';
	   html_txt+='               <div class="input-group">                                                                                                                                                                    ';
	   html_txt+='                 <input type="text" id="pg_user_review" name="message" placeholder="Type Message ..." class="form-control">                                                                                 ';
	   html_txt+='                 <span class="input-group-append">                                                                                                                                                          ';
	   html_txt+='                   <button type="button" onclick="saveData()" class="btn btn-primary">Send</button>                                                                                                         ';
	   html_txt+='                 </span>                                                                                                                                                                                    ';
	   html_txt+='               </div>                                                                                                                                                                                       ';
	   html_txt+='             </form>                                                                                                                                                                                        ';
	   html_txt+='           </div>                                                                                                                                                                                           ';
	   html_txt+='         </div>                                                                                                                                                                                             ';
	   html_txt+='         </div>                                                                                                                                                                                             ';
	   html_txt+='       </div>                                                                                                                                                                                               ';
	   
	   $("#pg_dtls").html(html_txt);
       $('.knob').knob();
       reloadImgAct();

}

function reloadImgAct()
{

  $('.product-image-thumb').on('click', function () {
      var $image_element = $(this).find('img')
      $('.product-image').prop('src', $image_element.attr('src'))
      $('.product-image-thumb.active').removeClass('active')
      $(this).addClass('active')
    })
}

function getAllPgImgDtls(pg_id)
{   
   var final_obj;
   $.ajax(
		{
			url:'pg_pages/getpgimages.jsp',
			data:{"pg_id":pg_id},
			type:'post',
			async: false,
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			   final_obj=JSON.parse(res);			   	
			   		  			  		  	          		
			}
		});		
	return final_obj;
}


function getAllPgRoomDtls(pg_id)
{   
   var final_obj;
   $.ajax(
		{
			url:'pg_pages/getpgroomdtls.jsp',
			data:{"pg_id":pg_id},
			type:'post',
			async: false,
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
			  	
			   final_obj=JSON.parse(res);			   	
			   		  			  		  	          		
			}
		});		
	return final_obj;
}



