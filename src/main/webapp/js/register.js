/**
 * 
 */
function userLogin()
{
	
	//dashboard.jsp
	var email=$("#inputuser").val();
	var pass=$("#inputpass").val();
	var obj={};	
	obj.email=email;	
	obj.pass=pass;
	$.ajax(
		{
			url:'registration/login.jsp',
			data:obj,
			type:'post',
			beforesend:function()
			{
				console.log("data processing...");
			},
			success:function(res)
			{
				if(res.trim()=="Login successfully!")
				{
					alert(res.trim());
					location.href="dashboard.jsp";
				}
				else
				{
					alert(res.trim());
					//location.reload();
				}
				
				
			}
		})
	
}


function saveRegDetails()
{
	var name=$("#inputname").val();
	var email=$("#inputemail").val();
	var gender=$("#gender").val();
	var phone=$("#inputphoneNumber").val();
	var pass=$("#inputpass").val();
	var conpass=$("#confirmpass").val();
	if(pass!==conpass)
	{
		alert("Password does Not match  Confrim Password");
	}
	var obj={};
	obj.name=name;
	obj.email=email;
	obj.gender=gender;
	obj.phone=phone;
	obj.pass=pass;
	obj.conpass=conpass;
	
	$.ajax(
		{
			url:'registration/registration_save.jsp',
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
		}
		
		
		
	);
}