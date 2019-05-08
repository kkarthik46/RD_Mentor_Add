<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.epam.mentor.bean.MentorBean"%> 
<%@page import="java.util.ArrayList"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Mentor Info landing Page</h1> 
      <table border ="0" width="500" align="center"> 
         <tr> 
          <th align="left"><b>Name</b></th> 
          <th align="left"><b>Technology Stream</b></th> 
          <th align="left"><b>Action</b></th> 
         </tr> 
        <%ArrayList<MentorBean> mentor =(ArrayList<MentorBean>)request.getAttribute("MentorbeanList"); 
        for(MentorBean m:mentor){%> 
        
            <tr> 
                <td align="left"><%=m.getName()%></td> 
                <td align="left"><%=m.getTechnologyStream()%></td> 
                <td align="left"><%=m.getStatus()%></td> 
            </tr> 
            <%}%> 
        </table>  
        
</body>
</html>