<%@ Page Language="VB" AutoEventWireup="false" CodeFile="roomLuxury1.aspx.vb" Inherits="roomLuxury1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="utf-8"/>
    <link href="../css/mainContent.css" rel="stylesheet" />
    <link href="../css/font-awesome.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="../css/jquery.datetimepicker.css" rel="stylesheet" />
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery.datetimepicker.full.min.js"></script>
    <title>Luxury suite</title>
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
               <a href="../Mainpage.aspx">About us</a>
            </li>
            <li>
               <a href="../Registerpage.aspx">Register</a>
            </li>
            <li>
               <a href="../Loginpage.aspx">Login</a>
            </li>
         </ul>
      </div>
   </div>
</nav>
<div class="container-figure">
   <div class="container">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
         <div class="hovereffect">
            <img class="img-responsive" src="../images/hotel3.jpg"/>
            <div class="overlay">
               <h2>Presidential suite</h2>
               <p class="info">asdfasdfsadf</p>
            </div>
         </div>
      </div>
   </div>
   <div class="container">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
         <a class ="btn btn-danger col-lg-12 shake-little centered" href="../Booking.aspx">BOOK NOW!!</a>
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
                     Opening Hours
                  </h3>
               </div>
               <div class="working_hours">
                  <ul>
                     <li>
                        <i class="fa fa-clock-o"></i>Monday - Thursday
                        06.00 - 22.00 
                     </li>
                     <li>
                        <i class="fa fa-clock-o"></i>Friday
                        06.00 - 23.00
                     </li>
                     <li>
                        <i class="fa fa-clock-o"></i>Saturday
                        06.00 - 23.30
                     </li>
                     <li>
                        <i class="fa fa-clock-o"></i>Sunday
                        06.00 - 21.00
                     </li>
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
