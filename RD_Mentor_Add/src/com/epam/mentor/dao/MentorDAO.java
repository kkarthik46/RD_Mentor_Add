package com.epam.mentor.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.epam.mentor.bean.MentorBean;
import com.epam.mentor.util.DBUtil;

public class MentorDAO {

	public int createMentor(MentorBean mentor) throws SQLException
	{
		Connection con=DBUtil.getConnection();
		
		PreparedStatement ps=con.prepareStatement("insert into Mentor_info values(?,?,?,?,?,?,?)");
		
		ps.setString(1,mentor.getEmail());
		ps.setString(2, mentor.getName());
		ps.setDate(3,new java.sql.Date((mentor.getMentorStartDate().getTime())));
		ps.setDate(4,new java.sql.Date((mentor.getMentorEndDate().getTime())));
		ps.setInt(5, mentor.getMaxNoOfMentees());
		ps.setString(6, mentor.getTechnologyStream());
		ps.setString(7,mentor.getStatus());
		int insert=ps.executeUpdate();
		return insert;
		
	}
	
	
	public List<MentorBean> fetchMentor() throws SQLException
	{
		List<MentorBean> mentorlist = new ArrayList<MentorBean>();
		
		Connection con=DBUtil.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from Mentor_Info");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
		MentorBean mentor=new MentorBean();
		mentor.setName(rs.getString(2));
		mentor.setTechnologyStream(rs.getString(6));
		mentor.setStatus(rs.getString(7));
		mentorlist.add(mentor);
		
		}
		
		return mentorlist;
	}
	
}
