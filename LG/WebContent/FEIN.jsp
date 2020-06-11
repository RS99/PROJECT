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
    <title>Search Approved Requests by mobile number</title>

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
                    <h1 class="title">Search Menu</h1>
                    <form method="POST" action="IN.jsp">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mobile Number</label>
									<div class="wrap-input100 validate-input" data-validate="Valid mobile number is: 0-9">
                                    <input class="input--style-4" type="text" name="mobileno" maxlength="10">
                                </div>
                            </div>
						</div>
                    </div>
                        <div class="p-t-10">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Search</button>
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
