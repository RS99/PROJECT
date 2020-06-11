<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="Security.*" %>
<%@page import="lg.Servlet.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import= "java.io.PrintWriter"%>
<%@page import ="java.util.List"%>

<%@page import ="javax.servlet.ServletException"%>
<%@page import ="javax.servlet.annotation.WebServlet"%>
<%@page import ="javax.servlet.http.HttpServlet"%>
<%@page import ="javax.servlet.http.HttpServletRequest"%>
<%@page import ="javax.servlet.http.HttpServletResponse"%>
<%@page import ="javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' href='resources/bootstrap.min.css'/>
<title>Pending Requests</title>
</head>
<body>
<%
request.getRequestDispatcher("Navigation.jsp").include(request, response);
    Connection con        = null;
    Statement  st         = null;
    PreparedStatement pst = null;
    ResultSet rs          = null;
    
    String Name=(String)session.getAttribute("user");
    out.print("<table class='table table-bordered table-striped'>");
    
    String department = "";
    
    try
    {
    	con = ConnectionProvider.getConnection();
    	String sqll = "select D_NAME from S_LOGIN where L_LOGINID = '"+Name+"' ";
    	st  = con.createStatement();
    	pst = con.prepareStatement(sqll);
    	rs  = pst.executeQuery();
    	if(rs.next())
    	{
    	  department = rs.getString("D_NAME");	
    	String sql = "select * from S_VISITOR WHERE V_DEPARTMENT ='"+department+"' AND V_STATUS='1'";
    	System.out.println(department);
    	st=con.createStatement();
    	pst = con.prepareStatement(sql);
    	rs  = pst.executeQuery();
    while(rs.next())
    {
    	out.print("<tr>");
       out.print("<td>Visitor Name :</td><td>"+(rs.getString("V_NAME"))+"</td>");
 	   out.print("<td>Mobile No. :</td><td>"+(rs.getString("V_MOBILENO"))+"</td>");
 	   out.print("<td>Purpose :</td><td>"+(rs.getString("V_PURPOSE"))+"</td>");
 	   out.print("<td>Department :</td><td>"+(rs.getString("V_DEPARTMENT"))+"</td>");
 	   out.print("<td>Contact Person:</td><td>"+(rs.getString("V_CONTACTPERSON"))+"</td>");
 	   out.print("<td>Request Raised By :</td><td>"+(rs.getString("L_LOGINID_ISSUE"))+"</td>");
 	   out.print("<td>Status :</td><td>"+(Integer.parseInt(rs.getString("V_STATUS"))+"</td>"));
 	   out.print("<td><a href='Approve?mobileno='"+(rs.getString("V_MOBILENO"))+"''>Approve</a></td>");
 	   out.print("</tr>");
 	       }
    }
  }
    catch(Exception e)
    {
    out.println("exception caught");	
    }
    finally{
    }
    out.print("</table>");
    %>
    
</body>
</html>