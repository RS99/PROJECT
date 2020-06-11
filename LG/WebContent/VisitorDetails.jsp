<%@page import="Security.ConnectionProvider"%>
<%@ page import = "java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.io.*"%>
<%@page import= "java.sql.ResultSet" %>
<%@page import= "java.sql.Connection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>

<html>
<head>
<title>Visitor Registration</title>
</head>
<body>
<%
    
    String mobileno   = request.getParameter("mobileno");
    String loginidissue    = request.getParameter("loginidissue");
    String rfidno       = request.getParameter("rfidno");
    String date       = request.getParameter("date");
    String time       = request.getParameter("time");
int status=Integer.parseInt(request.getParameter("status"));
int cardstatus=Integer.parseInt(request.getParameter("cardstatus"));
String item=request.getParameter("item");
    Connection con        = null;
    Statement  st         = null;
    PreparedStatement pst = null;
    try
    {
    	con=ConnectionProvider.getConnection();
//    	Class.forName("com.mysql.jdbc.Driver");
  //  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
        String sqll="update S_RFIDCARD SET R_STATUS='"+cardstatus+"' where R_RFIDNO='"+rfidno+"'";
    	String sql = "update  S_VISITOR set R_RFIDNO='"+rfidno+"', V_ISSUEDATE='"+date+"', V_ISSUETIME='"+time+"', V_STATUS='"+status+"', L_LOGINID_ISSUE='"+loginidissue+"',V_ITEM='"+item+"' where V_MOBILENO='"+mobileno+"'";
    	pst = con.prepareStatement(sql);
    	pst.executeUpdate();
    	pst=con.prepareStatement(sqll);
    	pst.executeUpdate();
    	System.out.println("Data Inserted");
    	response.sendRedirect("FEEmployeePage.jsp");
    }
    catch(Exception e)
    {
    	System.out.print(e.getMessage());
    }
    finally{
    	
    	System.out.println("Final Block");
    }
    
%>


</body>
</html>