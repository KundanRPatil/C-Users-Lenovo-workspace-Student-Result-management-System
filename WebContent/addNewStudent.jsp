<%@page import= "Project.ConnectionProvider"%> 
<%@page import= "java.sql.*"%> 
<%@page import="java.io.PrintWriter"%>
	<%@page import="java.util.Date"%>

<%
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String rollNo = request.getParameter("rollNo");
String name = request.getParameter("name");
String fatherName = request.getParameter("fatherName");
String time = (new Date().toString());
String gender = request.getParameter("gender");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("insert into student values('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+time+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}catch(Exception e){
	out.println(e);
}
%>                      