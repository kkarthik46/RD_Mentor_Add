package com.epam.mentor.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.epam.mentor.bean.MentorBean;
import com.epam.mentor.dao.MentorDAO;

public class MentorService {

	public String addMentor(MentorBean mentor) throws SQLException
	{
		if(mentor==null||mentor.getEmail()==null||mentor.getName()==null||mentor.getMentorStartDate()==null||mentor.getMentorEndDate()==null||mentor.getMaxNoOfMentees()<0||mentor.getStatus()==null)
		
		return "invalid";	
			
		MentorDAO mdao=new MentorDAO();
		int add=mdao.createMentor(mentor);
		if(add>0)
		{
			return "success";
		}
		else
		{
			return "failure";
		}
		
	}	
		
	public List<MentorBean> ViewMentor() throws SQLException
	{
		
		
		List<MentorBean> mentor=new ArrayList<MentorBean>();
		
		MentorDAO mdao=new MentorDAO();
		mentor=mdao.fetchMentor();
		
			return mentor;
	
	
	}
	}
		
		
		
		
	

	

