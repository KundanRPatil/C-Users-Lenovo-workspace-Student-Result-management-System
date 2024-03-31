<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@page import="Project.ConnectionProvider"%>
	<%@page import="java.sql.*"%>
                                                          
	<%
		Connection con = ConnectionProvider.getCon();
		String Roll_No = request.getParameter("Roll_No");
		PreparedStatement pst = con.prepareStatement("delete student,result from student INNER JOIN result where student.rollNo = result.rollNo and student.rollNo = ? ; ");
		pst.setString(1,Roll_No);
		int i = pst.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("adminHome.jsp");
		}
	%>
     
</body>
</html>