<%@ page import = "Security.*" %>
<%@ page import = "java.sql.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>mobile no search</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    
    <title>mobile no search</title>

    <!-- Icons font CSS-->
    <link href="Admin/vendor1/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor1/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Admin/vendor1/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor1/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Admin/css1/main.css" rel="stylesheet" media="all">
</head>
<body>
<ul>
 <li><a class="active" href="FEEmployeePage.jsp">Home</a></li>
 <li><a href="Logout">Logout</a></li>
 </ul>
 </body>
<%
String name="";
String purpose="";
String department="";
String contact="";
int status=0;
String mobileno= request.getParameter("mobileno");
PreparedStatement pst=null;
Statement st = null;  
java.sql.Connection con = null;
try
{ 
con= ConnectionProvider.getConnection();
	//Class.forName("com.mysql.jdbc.Driver");
    //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
    st = con.createStatement();
    String sql="select V_ID,V_NAME,V_MOBILENO,V_PURPOSE,V_DEPARTMENT,V_CONTACTPERSON,V_STATUS from S_VISITOR where V_MOBILENO='"+mobileno+"'";    
pst = con.prepareStatement(sql);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
 name=(rs.getString("V_NAME"));
	purpose=(rs.getString("V_PURPOSE"));
	 department=(rs.getString("V_DEPARTMENT"));
	 contact=(rs.getString("V_CONTACTPERSON"));
	 status=(rs.getInt("V_STATUS"));
	 mobileno= (rs.getString("V_MOBILENO"));
	
}
}
catch(Exception e)
{
out.println("exception caught");	
}
finally{
con.close();
st.close();
pst.close();
}
%>
	<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">In</h2>
                    <form action="VisitorDetails.jsp" method="POST">
                    <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_NAME</label>
                                    <input class="input--style-4" type="text" name="name" value="<%=name%>" maxlength="20">
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_MOBILENO</label>
                                    <input class="input--style-4" type="text" name="mobileno" value="<%=mobileno%>" maxlength="10">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_PURPOSE</label>
                                    <input class="input--style-4" type="text" name="purpose" value="<%=purpose%>">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_DEPARTMENT</label>
                                    <input class="input--style-4" type="text" name="department" value="<%=department%>">
                                               </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">R_RFIDNO</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="rfidno" maxlength="10">
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">CARD Status</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="cardstatus" maxlength="10">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_CONTACTPERSON</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="contact" value="<%=contact%>" maxlength="10">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_ISSUEDATE</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="date" maxlength="10">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_ISSUETIME</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="time">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">L_LOGINID_ISSUE</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="loginidissue" maxlength="10">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_STATUS</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="status" value="<%=status%>">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_REMARK</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="remark">
                                    </div>
                                </div>
                            </div>
							                                </div>
                            
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">I_TYPE</label>
                                    <div class="input-group-icon">
                                        <select name="item">
                                         <option value="laptop">LAPTOP</option>
                                         <option value="PenDrive">PENDRIVE</option>
                                         <option value="Both">Both</option>
                                        </select>
                                     </div>
                                 </div>
                             </div>
					
                     <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                    
                   
                                               
                        </div>
                   </form>
                   </div>
                </div>
            </div>
        </div>
    

    <!-- Jquery JS-->
    <script src="Admin/vendor1/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Admin/vendor1/select2/select2.min.js"></script>
    <script src="Admin/vendor1/datepicker/moment.min.js"></script>
    <script src="Admin/vendor1/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="Admin/js1/global.js"></script>
</body>
</html>