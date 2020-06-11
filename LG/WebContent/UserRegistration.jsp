<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="Security.*"%>
<html>
<head>
<title>Connection</title>
</head>

<body>


<%
String department=request.getParameter("department");
String name = request.getParameter("name");
String loginid = request.getParameter("loginid");
String password = request.getParameter("password");
String datetime = request.getParameter("date");
String type = request.getParameter("type");
int status = Integer.parseInt(request.getParameter("status"));
String email = request.getParameter("email");
String mobileno = request.getParameter("mobileno");
String remark = request.getParameter("remark");

Statement st = null;  
java.sql.Connection con = null;
try 
{
   System.out.println("db file call");
   con=ConnectionProvider.getConnection();
   //Class.forName("com.mysql.jdbc.Driver");
   //con = DriverManager.getConnection("jdbc:mysql://localhost:3307/LG","root","root");
   st = con.createStatement();
   
   String sql = "insert into S_LOGIN(L_LOGINID,L_NAME,L_EMAILID,L_MOBILENO,L_PASSWORD,L_DATETIME,L_STATUS,L_REMARK,L_TYPE,D_NAME) values('"+loginid+"','"+name+"','"+email+"','"+mobileno+"','"+password+"','"+datetime+"','"+status+"','"+remark+"','"+type+"','"+department+"')";
   PreparedStatement pst = con.prepareStatement(sql);
   pst.executeUpdate();
   System.out.println("statement complete");
   response.sendRedirect("FEAdminPage.jsp");
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