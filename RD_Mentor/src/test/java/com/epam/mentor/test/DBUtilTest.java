package com.epam.mentor.test;



import static org.junit.Assert.assertNotNull;

import java.sql.Connection;

import org.junit.Test;

import com.epam.mentor.util.DBUtil;

public class DBUtilTest {

	@Test
	public void testGetConnection() {
		Connection con=DBUtil.getConnection();
		assertNotNull(con);
	}

}
