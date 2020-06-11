<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    
    <title>Create Request</title>

    <!-- Icons font CSS-->
    <link href="Employee/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Employee/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Employee/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Employee/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Employee/css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h1 class="title">Create Request</h1>
                    <form action="RequestRegistration.jsp" method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    <input class="input--style-4" type="text" name="name" maxlength="20">
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mobile no.</label>
                                    <input class="input--style-4" type="text" name="mobileno" maxlength="10">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">purpose</label>
                                    <input class="input--style-4" type="text" name="purpose" maxlength="10">
                                </div>
                            </div>
                               <div class="col-2">
                                <div class="input-group">
                                    <label class="label">LOGINID</label>
                                    <input class="input--style-4" type="text" name="loginid" maxlength="10">
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
                                    <label class="label">Contact person</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="contact">
                                    </div>
                                </div>
                            </div>  
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Vstatus</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="status">
                                    </div>
                                </div>
                            </div>  
                            <div class="p-t-15">
                                <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                                <button class="btn btn--radius-2 btn--blue" type="submit" onclick="javascript:history.go(-1);return false;">Back</button>
                            </div>
                        </div>    
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="Employee/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Employee/vendor/select2/select2.min.js"></script>
    <script src="Employee/vendor/datepicker/moment.min.js"></script>
    <script src="Employee/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="Employee/js/global.js"></script>

</body>
</html>
