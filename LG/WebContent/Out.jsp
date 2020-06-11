<%@ page import = "Security.*" %>
<%@ page import = "java.sql.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Card No Search</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    
    

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

<%
int s=3;
String mobileno="";
String name="";
String loginidissue = "";
String issuedate ="";
String issuetime ="";
int status=0;
int cardstatus=0;
String rfidno = request.getParameter("rfidno");

PreparedStatement pst=null;
ResultSet rs=null;
Statement st = null;  
Connection con = null;
try
{ 
con= ConnectionProvider.getConnection();
	//Class.forName("com.mysql.jdbc.Driver");
    //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
    st = con.createStatement();
    String sqll="select R_STATUS FROM S_RFIDCARD WHERE R_RFIDNO='"+rfidno+"'";
    pst = con.prepareStatement(sqll);
    rs=pst.executeQuery();
    while(rs.next())
    {
    	cardstatus=(rs.getInt("R_STATUS"));
    }
    String sql="select V_NAME,V_MOBILENO,L_LOGINID_ISSUE,V_ISSUEDATE,V_ISSUETIME,V_STATUS from S_VISITOR where R_RFIDNO='"+rfidno+"' AND V_STATUS='"+s+"'";    
pst = con.prepareStatement(sql);
rs=pst.executeQuery();
while(rs.next())
{
	
     name=(rs.getString("V_NAME"));
     mobileno=(rs.getString("V_MOBILENO"));
	 loginidissue=(rs.getString("L_LOGINID_ISSUE"));
	 issuedate=(rs.getString("V_ISSUEDATE"));
	 issuetime=(rs.getString("V_ISSUETIME"));
	 status=(rs.getInt("V_STATUS"));
	 
	
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
                    <h2 class="title">OUT</h2>
                    <form action="VisitorOut.jsp" method="POST">
                    <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">VISITOR NAME</label>
                                    <input class="input--style-4" type="text" name="name" value="<%=name%>" maxlength="20">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">MobileNo</label>
                                    <input class="input--style-4" type="text" name="mobileno" value="<%=mobileno%>" maxlength="20">
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Login Id Issue</label>
                                    <input class="input--style-4" type="text" name="loginidissue" value="<%=loginidissue%>" maxlength="10">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ISSUE DATE</label>
                                    <input class="input--style-4" type="text" name="issuedate" value="<%=issuedate%>">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ISSUE TIME</label>
                                    <input class="input--style-4" type="text" name="issuetime" value="<%=issuetime%>">
                                               </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">R_RFIDNO</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="rfidno" value="<%=rfidno%>" maxlength="10">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V STATUS</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="status" value="<%=status%>" maxlength="10">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">RETURN DATE</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="rdate" maxlength="10">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">RETURN TIME</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="rtime">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">RETURN ID </label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="loginidreturn" maxlength="10">
                                    </div>
                                </div>
                            </div>
							
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">CARD STATUS</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="cardstatus"  maxlength="10">
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