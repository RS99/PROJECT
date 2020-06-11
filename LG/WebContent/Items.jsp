<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<html>
<head>
<title>Connection</title>
</head>
<body>
<h1> Connection </h1>
<% 
int vid=Integer.parseInt( request.getParameter("vid"));
String loginid= request.getParameter("loginid");
String remark= request.getParameter("remark");
int status= Integer.parseInt(request.getParameter("status"));
String dateTime= request.getParameter("datetime");
String type= request.getParameter("type");
PreparedStatement pst=null;
Statement st = null;  
java.sql.Connection con = null;
try 
{
   System.out.println("db file call");
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection("jdbc:mysql://localhost:3307/LG","root","root");
   st = con.createStatement();
   String sql = "insert into S_ITEMS(V_ID, L_LOGINID, V_REMARK, V_STATUS, I_DATETIME, I_TYPE) values('"+ vid + "','" + loginid + "','" + remark + "',' "+ status + "','" + dateTime + "','" + type + "')";
   pst = con.prepareStatement(sql);
   pst.executeUpdate();
   System.out.println("statement complete");    
}
catch(SQLException e) 
{
   out.println("SQLException caught: " +e.getMessage());
}

finally
{
   try
   {
      if(con != null)
      con.close();
   } 
   catch(Exception e)
   {
   }
}
   
%>

</body>
</html>