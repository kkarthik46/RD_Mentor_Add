<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add Mentor Info</title>
		<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>		
		<style type="text/css">
			.tabs {
			    margin:  0px;
			    padding: 0px;
			    list-style: none;
			    display: table;
			    table-layout: fixed; 
			    width: 100%;	  
			}
		    .tabs_item {
		        display: table-cell; 
		        //width: 250px;       
		    }
		    .tabs_link {
		        display: block; 
		    }
			.primary_nav {
			    text-align: center;
			    border-radius: 4px;
			    overflow: hidden;	    	    
			}
		    .primary_nav a {
		           padding: 0.5em;
		           background-color: #454545;
		           color: #fff;
		           text-decoration: none;
		    }		
		    .primary_nav a:hover {
		        background-color: #000;
		        color: #23CAEB;
		    }
		    .backbutton, .savebutton{
		    	font-size: 12px;
		    	border-radius: 5px 5px 5px 5px;
				background:  #D8DCDE;
				padding: 5px 5px 5px 5px;				
				width: 60px;
				height: 28px;
				float: right;				
				margin: 3px;
				text-align: center;
				cursor: pointer;
			}
			.ok_button{
		    	font-size: 12px;
		    	border-radius: 5px 5px 5px 5px;
				background:  #D8DCDE;
				padding: 5px 5px 5px 5px;				
				width: 60px;
				height: 28px;
				float: right;				
				margin: 3px;
				text-align: center;
				cursor: pointer;
			}
			.mentor_info_title{
		    	font-size: 17px;
		    	border-radius: 5px 5px 5px 5px;
				background: #fff;
				padding: 5px 5px 5px 15px;				
				height: 30px;	
				margin: 3px;							
			}  	
			.add_mentor_head{
				font-size: 20px; 
				padding-left: 20px;
				border-radius: 5px 5px 5px 5px;
				margin: 3px;
				background-color: #fff;
				height: 30px;
			}
			.form_lable{
				width: 300px;
				padding-left: 100px;
				font-size: 14px;
				color: #909497;
			}
			.required{
				color: #e32;
				content: " *";
				display: inline; 
			}
			.mentor_info_form{
		    	font-size: 12px;
		    	border-radius: 5px 5px 5px 5px;
				background: #fff;
				padding: 5px 5px 5px 15px;	
				margin: 3px;												
			} 
			.page_footer{
				height: 40px; 
				background-color: #454545;
			}
			.rd_admin_tab{		
				background-color: #23CAEB;
				color: #fff;	
				display: table-cell; 		             
			}
			table.b, table tr.b, table td.b	{ 
				border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; border: 0; 
			}
			.txtbrcolr
			{
				border-color: red;
			} 		
			.mentor_added_message{
				height: 40px;
				width: 250px;
				border-radius: 5px 5px 5px 5px;
				background-color: #DFF0D8;
				color: #008000;
				display: none;
				position: absolute;
				left: 500px;
				top: 60px;"			
			}	
			.alert_popup{
				width: 300px;				
				border-radius: 5px 5px 5px 5px;						
				display: none;
				position: absolute;
				left: 500px;
				top: 5px;
				background-color: #FFFAFA;							
			}		  			
		</style>
		<script src="add_mentor.js">
			
			</script>		
	</head>
	<body>
	
		<div style="font-family: 'Oswald', sans-serif; font-size: 15px; background-color: #ECF0F1; margin: 0px 3px 0px 3px;">
		<div id="mentor_added_message" class="mentor_added_message" style="padding: 7px 10px 5px 40px;">
			Mentor Added Successfully
		</div>
		<div id="alert_popup" class="alert_popup" style="padding: 7px 10px 5px 40px; border: 1px solid #DCDCDC;">	
			<div style="margin: 10px 0px 20px 10px;">
				RD Portal Says
			</div>
			<div id="message_info">
			</div>
			<span class="ok_button" style="background-color:#5CB85C ; color: #FFF" name="ok"  onClick="closeAlertPopup()">OK</span>		
		</div>
		<div>
			<ul class="tabs  primary_nav">
			    <li class="rd_admin_tab"> 
			        RD ADMIN PORTAL
			    </li>
			    <li class="tabs_item">
			        <a href="#" class="tabs_link">STUDENT INFO</a>
			    </li>
			    <li class="tabs_item">
			        <a href="#" class="tabs_link">MENTOR INFO</a>
			    </li>
			     <li class="tabs_item">
			        <a href="#" class="tabs_link">BATCH INFO</a>
			    </li>
			    <li class="tabs_item">
			        <a href="#" class="tabs_link">REPORTS</a>
			    </li>
			    <li class="tabs_item">
			        <a href="#" class="tabs_link">SEARCH</a>
			    </li>
			    <li class="tabs_item">
			        <a href="#" class="tabs_link" style="padding: 7px 0px 2px 0px;"><img style="margin: 0px; padding: 0px;" src="images/logout_icon.png"/></a>
			       
			    </li>				   				   				    				   			   
			</ul>
			
			</div>
			<div class="add_mentor_head">ADD MENTOR</div>
			<div>
				<div>	
					<table width="100%">
						<tr>
							<td align="right">
								<span class="savebutton" style="background-color:#5CB85C ; color: #FFF" name="save"  onClick="validateForm()">SAVE</span>
								<span class="backbutton" onClick="gotoMentorInfo()">BACK</span>
							</td>
						</tr>
					</table>						
				</div>			
				<div class="mentor_info_title">MENTOR INFO</div>
				<div class="mentor_info_form">
					<form id="mentor_info_form" name="mentor_info_form">
						<table>
							<tr>
								<td class="form_lable">Name:<span class="required">*</span></td>
								<td><input type="text" id="mentor_name" name="mentor_name" class="form-control form-control-sm" size="30" required/></td>								
							</tr>
							<tr>
								<td class="form_lable">Email:<span class="required">*</span> </td>
								<td><input type="text"  id="mentor_email" name="mentor_email" class="form-control form-control-sm" size="30" required/>
							</tr>
							<tr>
								<td class="form_lable">Mentorship Start Date:<span class="required">*</span></td>
								<td><input type="date" id="mentorship_start_date"  name="mentor_start_date" class="form-control form-control-sm" size="30" required/>
							</tr>
							<tr>
								<td class="form_lable">Mentorship End Date: </td>
								<td><input type="date" class="form-control form-control-sm" name="mentor_end_date" size="30" />
							</tr>
							<tr>
								<td class="form_lable">Max No.of Mentees:<span class="required">*</span></td>
								<td><input type="text" id="max_no_of_mentees" name="max_noof_mentees" class="form-control form-control-sm" size="30" required/>
							</tr>
							<tr>
								<td class="form_lable">Technology Stream: </td>
								<td>
									<select name="mentor_technology" class="form-control form-control-sm">
										<option></option>
										<option>Java</option>
										<option>.Net</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="form_lable">Status:<span class="required">*</span> </td>
								<td>
									<select id="mentor_status" name="mentor_status" class="form-control form-control-sm" required>										
										<option>ACTIVE</option>
										<option>INACTIVE</option>
										<option>Onhold</option>
									</select>
								</td>
							</tr>
						</table>
					</form>
				</div>				
			</div>	
			<div class="page_footer">
			</div>				
		</div>
	</body>
	<script>
		$("#mentor_name").keypress(function(){
			  if($(this).val().length>=1){}
			 	 $(this).removeClass('txtbrcolr');
			});
		$("#mentor_email").keypress(function(){
			  if($(this).val().length>=1){}
			 	 $(this).removeClass('txtbrcolr');
			});
		$("#mentorship_start_date").change(function(){
			  if($(this).value){}
			 	 $(this).removeClass('txtbrcolr');
			});
		$("#max_no_of_mentees").keypress(function(){
			  if($(this).val().length>=1){}
			 	 $(this).removeClass('txtbrcolr');
			});
		$("#mentor_status").change(function(){
			  if($(this).val()){}
			 	 $(this).removeClass('txtbrcolr');
			});	
	</script>
</html>