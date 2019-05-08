package com.epam.mentor.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.epam.mentor.bean.MentorBean;
import com.epam.mentor.service.MentorService;

/**
 * Servlet implementation class MentorServlet
 */

@WebServlet("/MentorServlet")
public class MentorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MentorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			String Operation=req.getParameter("operation");
			PrintWriter pw=res.getWriter();
			
			if(Operation.equals("addmentor"))
			{
			
			try {
				String status = addMentor(req);
				
				if(status.equals("success"))
				pw.print("Mentor added sucessfully");
				
				if(status.equals("failure"))
					res.sendRedirect("Failure.jsp");
						
				if(status.equals("invalid"))
					res.sendRedirect("Invalid.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			}
			else
			{
				List<MentorBean> mentor=new ArrayList<MentorBean>();
				try {
					
				mentor=(List<MentorBean>) ViewMentor(req);
					
					if(mentor!=null)	
					req.setAttribute("MentorbeanList",mentor);
					RequestDispatcher view =req.getRequestDispatcher("/displayMentor.jsp");
		            view.forward(req,res);
						
						/*if(status.equals("failure"))
							res.sendRedirect("Failure.jsp");
								
						if(status.equals("invalid"))
							res.sendRedirect("Invalid.jsp");*/
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
				
			}
			}
		
	

	private List<MentorBean> ViewMentor(HttpServletRequest req) throws SQLException {
		MentorService service=new MentorService();
		return service.ViewMentor();
		
		
	}

	private String addMentor(HttpServletRequest req) throws SQLException {
		// TODO Auto-generated method stub
		MentorBean mentor=new MentorBean();
		String mentor_s_date=req.getParameter("mentor_start_date");
		Date add_s_date=Date.valueOf(mentor_s_date);
		String  mentor_e_date=req.getParameter("mentor_end_date");
		Date add_e_date=Date.valueOf( mentor_e_date);
		mentor.setName(req.getParameter("mentor_name"));
		mentor.setEmail(req.getParameter("mentor_email"));
		mentor.setMentorStartDate(add_s_date);
		mentor.setMentorEndDate(add_e_date);
		mentor.setMaxNoOfMentees(Integer.parseInt(req.getParameter("max_mentees")));
		mentor.setTechnologyStream(req.getParameter("mentor_technology"));
		mentor.setStatus(req.getParameter("mentor_status"));
		MentorService service=new MentorService();
		return service.addMentor(mentor);
		
		
		
	
		
	}

}
