<%@ page import = "java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.io.*"%>
<%@page import= "java.sql.ResultSet" %>
<%@page import= "java.sql.Connection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="Security.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Requester Registration</title>
</head>
<body>
<%
    String name       = request.getParameter("name");
    String mobileno   = request.getParameter("mobileno");
    String loginid    = request.getParameter("loginid");
    String purpose    = request.getParameter("purpose");
    String department = request.getParameter("department");
    String contact    = request.getParameter("contact");
    int status=Integer.parseInt(request.getParameter("status"));
    Connection con        = null;
    Statement  st         = null;
    PreparedStatement pst = null;
    try
    {
    	con=ConnectionProvider.getConnection();
//    	Class.forName("com.mysql.jdbc.Driver");
  //  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
    	String sql = "insert into S_VISITOR(V_NAME,V_MOBILENO,L_LOGINID_ISSUE,V_PURPOSE,V_DEPARTMENT,V_CONTACTPERSON,V_STATUS) values('"+name+"','"+mobileno+"','"+loginid+"','"+purpose+"','"+department+"','"+contact+"','"+status+"')";
    	st  = con.createStatement();
    	pst = con.prepareStatement(sql);
    	pst.executeUpdate();
    	System.out.println("Data Inserted");
    	response.sendRedirect("FERequesterPage.jsp");
    }
    catch(Exception e)
    {
    	System.out.print(e);
    }
    finally{
    	System.out.println("Final Block");
    }
    
%>


</body>
</html>                  
