<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Mentor Info - Landing Page</title>
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
		    .add_new_mentor_button{
		    	font-size: 14px;
		    	border-radius: 5px 5px 5px 5px;
				background: #CACFD2;
				padding: 3px 15px 5px 15px;				
				//width: 60px;
				height: 28px;
				float: right;				
				margin: 3px 3px 3px 20px;
				text-align: center;
				background-color:#5CB85C;
				color: #FFF;
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
			.required input:after{ 
				content:"*"; 
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
			.mentor_info_table{
				font-size: 14px;
				width: 100%;
				margin-top: 20px;
			}	
			.mentor_info_search{
				width: 70%;
			}
			.rows{
				color: #808080;
				height: 40px;
				border-bottom: 2px solid #D3D3D3;
			}
			.settings_image{
				height: 20px;
				width: 20px;
			}
			.down_arrow_image{
				height: 20px;
				width: 20px;
				float: center;
			}
			.logout_image{
			}
		</style>
		<script>
			function gotoAddMentor()
			{
				window.location = 'AddMentorInfo.jsp';
			}
		</script>
	</head>
	<body>
		<div style="font-family: 'Oswald', sans-serif; font-size: 15px; background-color: #ECF0F1; margin: 0px 3px 0px 3px;">
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
			<div class="add_mentor_head">MENTOR INFO - LANDING PAGE</div>
			<div>					
				<div id="mentor_info_details" style="padding: 30px;">
					<form>
						<table class="mentor_info_search">
							<tr>								
								<td><input type="text" placeholder="Mentor Name" name="mentor_name" class="form-control form-control-sm" size="30" required/></td>								
								<td>
									<select name="mentor_technology" class="form-control form-control-sm">
										<option disabled selected hidden>Technology Stream</option>
										<option>Java</option>
										<option>.Net</option>
									</select>									
								</td>
								<td><img src="images/search_icon.png" height="20px" width="20px" /></td>
								<td>
									<span class="add_new_mentor_button" onClick="gotoAddMentor()">ADD NEW MENTOR</span>
								</td>
							</tr>							
						</table>
					</form>
					<table class="mentor_info_table">
						<tr>
							<th>NAME</th>
							<th>TECHNOLOGY STREAM</th>
							<th>STATUS</th>
							<th>ACTIONS</th>
						</tr>
						<%
							for(int i=0; i<10; i++)
							{
								String str = "<tr class=rows>";
								str +="<td>Name</td>";
								str +="<td>Technology Stream</td>";
								str +="<td>Status</td>";
								out.print(str);
								out.print("<td><img class='settings_image' src='images/settings_icon.png'/><img class='down_arrow_image' src='images/down_arrow.png'/></td>");
								out.print("</tr>");
							}
						%>
					</table>
				</div>	
			</div>	
			<div class="page_footer">
			</div>				
		</div>
	</body>
</html>