<%@ page import = "java.sql.*" %>
<%@page import="Security.*" %>
<!DOCTYPE html>
<html>
<head>

<title>User Details</title>
</head>
<body>
<%
    String loginid = (String)session.getAttribute("user");
    System.out.println(loginid);
    Connection con        = null;
    Statement st          = null;
    PreparedStatement pst = null;
    ResultSet rs          = null;
    
    
    try
    {
    	con=ConnectionProvider.getConnection();
        // Class.forName("com.mysql.cj.jdbc.Driver");
         
         String sql = "select * from S_LOGIN where L_LOGINID ='"+loginid+"'";
         //con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","root");
         st  = con.createStatement();
         pst = con.prepareStatement(sql);
         rs  = pst.executeQuery();
         out.print("<table border=3px cellpadding=2px cellspacing=3px>");
         while(rs.next())
         {
         out.print("<tr><td>Your ID is : </td><td>"           + (Integer.parseInt(rs.getString("L_ID")))+     "</td></tr>");
         out.print("<tr><td>Your Login ID is : </td><td>"     + (rs.getString("L_LOGINID"))+                  "</td></tr>");
         out.print("<tr><td>Your Name is : </td><td>"         + (rs.getString("L_NAME"))+                     "</td></tr>");
         out.print("<tr><td>Your Email ID is : </td><td>"     + (rs.getString("L_EMAILID"))+                  "</td></tr>");
         out.print("<tr><td>Your Mobile No. is : </td><td>"   + (rs.getString("L_MOBILENO"))+                 "</td></tr>");
         out.print("<tr><td>Your Password is : </td><td>"     + (rs.getString("L_PASSWORD"))+                 "</td></tr>");
         out.print("<tr><td>Your Joining Date is : </td><td>" + (rs.getString("L_DATETIME"))+                 "</td></tr>");
         out.print("<tr><td>Your Status is : </td><td>"       + (Integer.parseInt(rs.getString("L_STATUS")))+ "</td></tr>");
         out.print("<tr><td>Your Remark is : </td><td>"       + (rs.getString("L_REMARK"))+                   "</td></tr>");
         out.print("<tr><td>Your Type is : </td><td>"         + (rs.getString("L_TYPE"))+                     "</td></tr>");
         out.print("<tr><td>Department : </td><td>"         + (rs.getString("D_NAME"))+                     "</td></tr>");
         
    }
    }
    catch(Exception e)
    {
    	System.out.println(e);
    }
    out.print("</table>");
    
    
%>
</table>
</body>
</html>