<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>New User Registration</title>

    <!-- Icons font CSS-->
    <link href="Admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Admin/css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">New User Form</h2>
                    <form action="UserRegistration.jsp" method="post">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    <input class="input--style-4" type="text" name="name" maxlength="8">
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">LoginID</label>
                                    <input class="input--style-4" type="text" name="loginid" maxlength="8">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Password</label>
                                    <input class="input--style-4" type="password" name="password" maxlength="10">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">DateTime</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="date" maxlength="19">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">User Type</label>
                                    <div class="input-group-icon">
										<select class="input--style-4" id="type" name="type">
		                                <option class="input--style-4" value="Employee">Employee</option>
		                                <option class="input--style-4" value="Requester">Requester</option>
		                                <option class="input--style-4" value="Approver">Approver</option>
	                                    </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mobile Number</label>
                                    <input class="input--style-4" type="text" name="mobileno">
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Remarks</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="remark">
                                    </div>
                                </div>
                            </div>
                        </div>
                                <div class="col-2">
                                <div class="input-group">
                                    <label class="label" >Department</label>
                                    <div class="input-group-icon">
                                        <select class="input--style-4" name="department">
                                        <option class="input--style-4" value="IT">IT</option>
                                        <option class="input--style-4" value="R&D">R&D</option>
                                        <option class="input--style-4" value="SALES AND MARKETING">SALES AND MARKETING</option>
                                        <option class="input--style-4" value="HR">HR</option>
                                        <option class="input--style-4" value="OTHER">OTHER</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" >Status</label>
                                    <div class="input-group-icon">
                                        <select class="input--style-4" name="status">
                                        <option class="input--style-4" value="1">Active</option>
                                        <option class="input--style-4" value="2">INActive</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit" >Submit</button>
                            <button class="btn btn--radius-2 btn--blue" type="submit" onclick="javascript:history.go(-1);return false;">Back</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="Admin/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Admin/vendor/select2/select2.min.js"></script>
    <script src="Admin/vendor/datepicker/moment.min.js"></script>
    <script src="Admin/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="Admin/js/global.js"></script>

</body>
</html>
