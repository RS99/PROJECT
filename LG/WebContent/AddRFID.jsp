<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*" %>
<%@page import="Security.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<html>
<head>
<title>Card</title>
</head>
<body>
<h1> Connection </h1>
<% 
String rfidno= request.getParameter("rfidno");
int status= Integer.parseInt(request.getParameter("status"));
String remark= request.getParameter("remark");
PreparedStatement pst=null;
Statement st = null;  
java.sql.Connection con = null;
out.print("<form action = 'index.html' method = 'post'>");
out.print("<form action= 'Delete.jsp' method ='post'>");
out.print("<table>");

try 
{
   System.out.println("db file call");
   con=ConnectionProvider.getConnection();
 //  Class.forName("com.mysql.jdbc.Driver");
  // con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
   st = con.createStatement();
   String sql = "insert into S_RFIDCARD(R_RFIDNO, R_STATUS, R_REMARK) values('"+ rfidno + "','" + status + "','" + remark + "')";
   pst = con.prepareStatement(sql);
   pst.executeUpdate();
  response.sendRedirect("FEAdminPage.html");
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
      pst.close();
      st.close();
   } 
   catch(Exception e)
   {
   }
}
   
%>

</body>
</html>