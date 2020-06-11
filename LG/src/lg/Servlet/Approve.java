package lg.Servlet;

import Security.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Approve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		Statement st = null;
		PreparedStatement pst = null;
		
	    HttpSession session = request.getSession();
	    String mobileno= (String)session.getAttribute("mobile");
		try {
			con=ConnectionProvider.getConnection();
    	    st = con.createStatement();  
    	    System.out.println("Connection Established");
    	    String sql = "update S_VISITOR SET V_STATUS='2' where V_MOBILENO='"+mobileno+"' ";
    	    pst = con.prepareStatement(sql);
        	pst.executeUpdate();
             System.out.println(" Request Approved"); 
			   	response.sendRedirect("ViewRequest.jsp");  	
           }
    	 catch (Exception e) {
			System.out.println(e.getMessage());
		} 
		finally {

			System.out.println("final block");
		}
	}
}