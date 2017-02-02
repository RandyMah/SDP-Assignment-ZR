<%@ Page Language="VB" AutoEventWireup="false" CodeFile="roomStandard1.aspx.vb" Inherits="roomStandard1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/mainContent.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/Jquery.js"></script>
    <title>Standard suite</title>
</head>
<body>
    <form id="form1" runat="server">
     <nav id="mainNav" class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu-collapse">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars" aria-hidden="true"></i>
                </button>
                <a class="navbar-brand" href="Mainpage.aspx">Hotel China Town Inn</a>
            </div>
            <div class="collapse navbar-collapse" id="menu-collapse">
                <ul class="navbar-nav nav navbar-right">
                    <li>
                        <a href="room.aspx">Rooms</a>
                    </li>
                    <li>
                        <a href="#mainAbout">About us</a>
                    </li>
                    <li>
                        <a href="Registerpage.aspx">Register</a>
                    </li>
                    <li>
                        <a href="Loginpage.aspx">Login</a>
                    </li>
                    <li>
                        <a href="StaffLoginpage.aspx">Staff Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
             <div class="container">
                     <div id="roomDetails-page">
                 <div class="page-header">
                 <h1>Standard suite</h1>
                 </div>
                 <div class="container">
                 <div class="col-md-6 col-xs-12 col-lg-6 co-sm-6">
                    <div class="hovereffect">
                        <img class="img-responsive" src="images/hotel2.jpg" />
                    <div class="overlay">
                    <h2>Standard suite</h2>
				    <p> 
                        <asp:Label ID="Label1" runat="server"></asp:Label>
				    </p> 
                </div>
            </div>
        </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class ="form-horizontal">
                        <button type ="submit" class="btn btn-primary">asdfasdf</button>      
                </div>
        </div>

    </div>
</div>
                 </div>

        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Opening Hours</h3>
                            </div>
                            <div class="working_hours">
                                <ul>
                                    <li>
                                        <i class="fa fa-clock-o"></i>Monday - Thursday
                                        06.00 - 22.00 </li>
                                    <li>
                                        <i class="fa fa-clock-o"></i>Friday
                                        06.00 - 23.00</li>
                                    <li>
                                        <i class="fa fa-clock-o"></i>Saturday
                                        06.00 - 23.30</li>
                                    <li>
                                        <i class="fa fa-clock-o"></i>Sunday
                                        06.00 - 21.00</li>
                                </ul>
                            </div>
                        </div>
                    </div>  
                </div>
                <div class="regards">
                    Best regards from Hotel China Town Inn.
            </div>
                </div>
        </div>
    </form>
</body>
</html>
