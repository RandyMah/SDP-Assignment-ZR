<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StaffLoginPage.aspx.vb" Inherits="StaffLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Login page</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/mainContent.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/Jquery.js"></script>
</head>
<body>
    
    <nav id="mainNav" class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu-collapse">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="Mainpage.aspx">Hotel China Town Inn</a>
            </div>
            <div class="collapse navbar-collapse" id="menu-collapse">
                <ul class="navbar-nav nav navbar-right">
                    <li>
                        <a href="#mainRoom">Rooms</a>
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
    <form id="form1" runat="server">
        <div id="form-page">
        <section class="page-header">
        <div class ="container">
            <div class ="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
                <div class ="banner">
                <h1>Hotel China Town Inn</h1>
                <h3>Staff Login page</h3>
            </div>
                </div>
            <div class ="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class ="formSection">
                <div class ="form-horizontal">
                    <fieldset>
                         <legend>Login Details</legend>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Staff ID" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Staff ID" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" CssClass="form-control"
                                    TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <a href="Staff_Manager/Add_Rooms.aspx" class="btn btn-success">Login</a>
                                <asp:Button ID="Button2" runat="server" Text="Back" class="btn btn-danger"/>  
                            </div>
                        </div>
                    </fieldset>    
                </div>
            </div>
       </div>
    </div>
            </section>
            </div>
        </form>
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
</body>
</html>
