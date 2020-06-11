package lg.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import Security.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
 import java.io.*;
 import java.util.List;
 import javax.servlet.annotation.WebServlet;

public class ViewRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Request Viewer</title>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		HttpSession session=request.getSession();
		request.getRequestDispatcher("Navigation.jsp").include(request, response);
	    Connection con        = null;
	    PreparedStatement pst = null;
	    ResultSet rs          = null;
	    Statement st=null;
	    String Name=(String)session.getAttribute("user");
	  
	    out.print("<table class='table table-bordered table-striped'>");
		out.println("<tr><th>Visitor Name</th><th>Mobile No</th><th>Purpose</th><th>Department</th><th>Contact Person</th><th>Request Id</th><th>Status</th><th>Approve</th><th>Reject</th></tr>");
	    String department = "";
	    
	    try
	    {
	    	con = ConnectionProvider.getConnection();
	    	String sqll = "select D_NAME from S_LOGIN where L_LOGINID = '"+Name+"' ";
	    	st=con.createStatement();
	    	pst = con.prepareStatement(sqll);
	    	rs  = pst.executeQuery();
	    	if(rs.next())
	    	{
	    	  department = rs.getString("D_NAME");	
	    	  System.out.println(department);
	    	}
	    	String sql = "select * from S_VISITOR WHERE V_DEPARTMENT ='"+department+"' AND V_STATUS='1'";	
	    	st=con.createStatement();
	    	pst = con.prepareStatement(sql);
	    	rs  = pst.executeQuery();
	    	System.out.println("Query chl gyi hai -_-");
	    while(rs.next())
	    {
	    	
	    	String mobile=(rs.getString("V_MOBILENO"));
	    	session.setAttribute("mobile", mobile);
	    	out.print("<tr>");
	       out.print("<td>"+(rs.getString("V_NAME"))+"</td>");
	 	   out.print("<td>"+mobile+"</td>");
	 	   out.print("<td>"+(rs.getString("V_PURPOSE"))+"</td>");
	 	   out.print("<td>"+(rs.getString("V_DEPARTMENT"))+"</td>");
	 	   out.print("<td>"+(rs.getString("V_CONTACTPERSON"))+"</td>");
	 	   out.print("<td>"+(rs.getString("L_LOGINID_ISSUE"))+"</td>");
	 	   out.print("<td>"+(rs.getInt("V_STATUS")+"</td>"));
	 	   out.print(" <td><a href='Approve' class='btn btn-primary' role='button'>Approve</a></td> ");
	 	  out.print(" <td><a href='Reject' class='btn btn-primary' role='button'>Reject</a></td> ");
	 	   out.print("</tr>");
	 	       }
	    
	  }
	    catch(Exception e)
	    {
	    out.println("exception caught");	
	    }
	    finally{
	    }
	    out.println("</table>");
	 
	    out.println("</body>");
	    out.println("</html>");
	}
}
