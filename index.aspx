<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Car Parking System</title>
    <link rel="shortcut icon" type="image/png" href="assets/img/P.jpg">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="static/assets/bootstrap/css/bootstrap.min.css">
    <link href="static/home/fontawesome/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="static/assets/css/user.css">
    <link rel="stylesheet" href="static/assets/w3css/w3.css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation" style="color: black">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                    </button>
                <a class="navbar-brand page-scroll" href="index.php">
                    Online Car Parking System </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->

            
               
              

            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">Home</a>
                    </li>
                   
                    <li>
                        <a href="login_user.aspx">Customer</a>
                    </li>
                    <li>
                        <a href="login_admin.aspx"> Admin </a>
                    </li>
                </ul>
            </div>
                
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <div class="bgimg-1">
        <header class="intro">
            <div class="intro-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            
                            <p class="intro-text" style="color: yellow; font-size:45px; font-weight:">
                            Car Parking Management System
                            </p>
                            <a href="#sec2" class="btn btn-circle page-scroll blink">
                                <i class="fa fa-angle-double-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>

    <div id="sec2" style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
        <h3 style="text-align:center;"> Packages</h3>
<br>
        <section class="menu-content">
           
            <div class="col-sm-2">
                <div class="card" style="width: 18rem;">
                    <img src='img/2.jpeg' class="card-img-top" alt="...">
                    <div class="card-body">
                        
                        <div style="text-align:center"> <a href="login_user.aspx" class="text-center" class="btn btn-success" style="text-align: center;">Car Booking</a></div>
                    </div>
                </div>
            </div>
                 
                        
        </section>
                    
    </div>

    <div class="bgimg-2">
        <div class="caption">
            <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"></span>
        </div>
    </div>
    
    <div class="bgimg-2">
        <div class="caption">
            <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"></span>
        </div>
    </div>
   

    <div class="bgimg-2">
        <div class="caption">
            <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"></span>
        </div>
    </div>
    
    <!-- Container (Contact Section) -->
    <!-- -->
 <div class="container-fluid" style="background-color: #414140;">
        
        <div class="row">
            <div class="col-sm-4">
                <h3 style="color:pink;">About Us</h3>
<p>What is online parking system?
Users can get details about parking areas for particular locations. It saves user time in search of parking space available in such a long parking area. The system provides a view of the parking spaces. It excludes the need of human efforts for managing parking spaces.</p>
            </div>
            <div class="col-sm-4 line-height">
                <h3 style="color:pink;">Contact Us</h3>
               Online Car Parking System<br>
                Nagercoil-629001<br>
                tours@gmail.com<br>
                9486000000
            </div>
            <div class="col-sm-4">
                <h3 style="color:pink;">Social Media</h3>
                <div class="row">
                    <div class="col-sm-1">
                        <a href="#"><i class="fab fa-facebook bg-light"></i></a>
                    </div>
                    <div class="col-sm-1">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                    <div class="col-sm-1">
                        <a href="#"><i class="fab fa-pinterest"></i></a>
                    </div>
                    <div class="col-sm-1">
                        <a href="#"><i class="fab fa-reddit"></i></a>
                    </div>

                </div>


            </div>

        </div>
        <hr>
        <div class="col-sm-12 text-center">
                    <h5>© <?php echo date("Y"); ?> Tour Management System</h5>
                </div>
    </div>
    <script>
        function myMap() {
            myCenter = new google.maps.LatLng(25.614744, 85.128489);
            var mapOptions = {
                center: myCenter,
                zoom: 12,
                scrollwheel: true,
                draggable: true,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);

            var marker = new google.maps.Marker({
                position: myCenter,
            });
            marker.setMap(map);
        }
    </script>
    <script>
        function sendGaEvent(category, action, label) {
            ga('send', {
                hitType: 'event',
                eventCategory: category,
                eventAction: action,
                eventLabel: label
            });
        };
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCCuoe93lQkgRaC7FB8fMOr_g1dmMRwKng&callback=myMap" type="text/javascript"></script>
    <script src="static/assets/js/jquery.min.js"></script>
    <script src="static/assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="static/assets/js/jquery.easing.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="static/assets/js/theme.js"></script>
</body>
<style>
  
    i {
        font-size: 30px;
    }
	</style>
</html>