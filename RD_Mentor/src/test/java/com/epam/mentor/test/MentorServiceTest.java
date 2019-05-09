package com.epam.mentor.test;







import static org.junit.Assert.assertEquals;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Test;

import com.epam.mentor.bean.MentorBean;
import com.epam.mentor.service.MentorService;

public class MentorServiceTest {

	static MentorService ms;
	@BeforeClass
	public static void instantiation()
	{
		ms = new MentorService();
	}
	
	@Test
	public void test() throws ParseException, SQLException {
		String s="12-11-2019";
		SimpleDateFormat sdf=new SimpleDateFormat("MM-DD-YYYY");
		Date d=sdf.parse(s);
		MentorBean mb = new MentorBean();
		mb.setName("chaitu");
		mb.setEmail("d@yahoo.com");
		mb.setMaxNoOfMentees(5); 
		mb.setMentorEndDate(d);
		mb.setMentorStartDate(d);
		mb.setStatus("Active");
		mb.setTechnologyStream("cse");
		assertEquals("success",ms.addMentor(mb));
	}
	
	
	
	
}
