package lg.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Security.ConnectionProvider;


public class ViewCard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Card Viewer</title>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		HttpSession session=request.getSession();
		
	    Connection con        = null;
	    PreparedStatement pst = null;
	    ResultSet rs          = null;
	    Statement st=null;
	  
	    out.print("<table class='table table-bordered table-striped'>");
	    out.println("<tr><th>Card Id</th><th>Card No</th><th>Card Status</th><th>Remarks</th>");
	    try
	    {
	    	con = ConnectionProvider.getConnection();
	    	String sql = "select * from S_RFIDCARD  ";
	    	st=con.createStatement();
	    	pst = con.prepareStatement(sql);
	    	rs  = pst.executeQuery();
	    	
	    	System.out.println("Query chl gyi hai -_-");
	    while(rs.next())
	    {
	    	
	    	
	    	out.print("<tr>");
	       out.print("<td> "+(rs.getInt("R_ID"))+"</td>");
	 	   out.print("<td>"+(rs.getString("R_RFIDNO"))+"</td>");
	 	   out.print("<td>"+(rs.getInt("R_STATUS"))+"</td>");
	 	   out.print("<td>"+(rs.getString("R_REMARK"))+"</td>");
	 	   out.print(" <td><a href='DeleteCard' class='btn btn-primary' role='button'>Delete</a></td> ");
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
		doGet(request, response);
	}

}
