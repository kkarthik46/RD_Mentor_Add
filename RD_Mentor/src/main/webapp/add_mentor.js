function validateForm() {
				var message = "";
				var l = message.length;
				var mentor_name=document.forms["mentor_info_form"]["mentor_name"].value;
				var mentor_email = document.forms["mentor_info_form"]["mentor_email"].value;
				var mentorship_start_date=$("#mentorship_start_date").val();
				var max_no_of_mentees = document.forms["mentor_info_form"]["max_no_of_mentees"].value;
				var mentor_status = document.forms["mentor_info_form"]["mentor_status"].value;
				//var regExprEmail = /^(([^<>()[]\.,;:s@"]+(.[^<>()[]\.,;:s@"]+)*)|(".+"))@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}])|(([a-zA-Z-0-9]+.)+[a-zA-Z]{2,}))$/igm;
				if(mentor_name == null || mentor_name == ""){
					message += "Name cannot be empty<br/>" + "\n";
					document.forms["mentor_info_form"]["mentor_name"].classList.add("txtbrcolr");
				}
				else{
					document.forms["mentor_info_form"]["mentor_name"].classList.remove("txtbrcolr");
				}
				if(mentor_email == null || mentor_email == "")
				{
					message += "Email cannot be empty<br/>" + "\n";
					document.forms["mentor_info_form"]["mentor_email"].classList.add("txtbrcolr");
				}
				/*else if(!regExprEmail.test(mentor_email)){
					message += "Email is not valid<br/>" + "\n";
					document.forms["mentor_info_form"]["mentor_email"].classList.add("txtbrcolr");
				}*/
				else{
					document.forms["mentor_info_form"]["mentor_email"].classList.remove("txtbrcolr");
				}
				if(mentorship_start_date == null || mentorship_start_date == ""){
					message += "Mentorship Start Date cannot be empty<br/>" + "\n";
					$("#mentorship_start_date").addClass('txtbrcolr');
				}
				else{
					$("#mentorship_start_date").removeClass('txtbrcolr');
				}
				if(max_no_of_mentees == null || max_no_of_mentees == "")
				{
					message += "Max no.of Mentees cannot be empty<br/>" + "\n";
					document.forms["mentor_info_form"]["max_no_of_mentees"].classList.add("txtbrcolr");
				}
				else{
					document.forms["mentor_info_form"]["max_no_of_mentees"].classList.remove("txtbrcolr");	
				}
				if(mentor_status == null || mentor_status == "")
				{
					message += "Mentor Status cannot be empty<br/>" + "\n";
					document.forms["mentor_info_form"]["mentor_status"].classList.add("txtbrcolr");
				}
				else{
					document.forms["mentor_info_form"]["mentor_status"].classList.remove("txtbrcolr");
				}
				if(message.length > 0 ){
					//alert(message);
					document.getElementById("message_info").innerHTML = message;
					document.getElementById("alert_popup").style.display = "block";
				}	
				else
					{						
						//document.getElementById("mentor_info_form").reset();
						//document.getElementById("mentor_added_message").style.display = "block";
					  	document.getElementById("mentor_info_form").action="./MentorServlet";
					    document.getElementById("mentor_info_form").method = "POST";
					    document.getElementById("mentor_info_form").submit();
					}
				}
				function closeAlertPopup(){
					document.getElementById("alert_popup").style.display = "none";
				}
				
				function gotoMentorInfo(){
					window.location = 'MentorInfoLandingPage.jsp';
				}				
				
				
				