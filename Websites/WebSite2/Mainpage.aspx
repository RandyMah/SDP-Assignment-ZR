<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Mainpage.aspx.vb" Inherits="Mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mainpage</title>
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
<body data-spy="scroll" data-target=".navbar">
    <form id="form1" runat="server">
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

        <header>
  <div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <div class="carousel-inner">
      <div class="item active">
        <img src="images/hotel1.jpg" class ="img-responsive"/>
      </div>
      <div class="item ">
        <img src="images/hotel2.jpg"/>
      </div>
      <div class="item">
        <img src="images/hotel3.jpg"/>
      </div>
         <div class="item">
        <img src="images/hotel4.jpg"/>
      </div>
         <div class="item">
        <img src="images/hotel5.jpg"/>
      </div>
         <div class="item">
        <img src="images/hotel6.jpg"/>
      </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>   
        </header>

            <section class ="text-center page-header" id="mainRoom">
             <div class ="container">
            <h1>Rooms in China Town Inn Hotel</h1>
            <hr style ="width:50%" />
            <div class ="row">
                <p>China Town Inn Hotel has a wide range of rooms to choose from. Ranging from budget rooms to luxurious rooms. No matter which room you choose, you will enjoy every facility in the hotel as well as the comfort that you paid for. </p>
            </div>
             </div> 
            
          <div class="container">
              <div class ="row">
            <div class="col-md-4 col-sm-4">
                        <div class="room-banner">
                                <div class="icon">
                                	<img  src="images/hotel1.jpg"/>
                                </div>
                                <h3>Book your Presidential suite here!!</h3>
                                <div class="separator"></div>
                            	<p>Enjoy your stay as how world leaders around the world enjoy with the best in class relaxation technology.</p>
                            <a href="roomPresidential1.aspx" class="btn btn-primary">See more!</a>
                        </div>
                    </div>
            <div class="col-md-4 col-sm-4">
                        <div class="room-banner">
                                <div class="icon">
                                	<img  src="images/hotel3.jpg"/>
                                </div>
                                <h3>Book your Luxurious suite here!!</h3>
                                <div class="separator"></div>
                            	<p>Sit back and relax to the most premium room experience you will ever feel with only the best money can buy in your stay</p>
                            <a href="roomLuxury1.aspx" class=" btn btn-primary">See more!</a>
                        </div>
                    </div>
            <div class="col-md-4 col-sm-4">
                        <div class="room-banner">
                                <div class="icon">
                                	<img  src="images/hotel2.jpg"/>
                                </div>
                                <h3>Book your Standard Room here!!</h3>
                                <div class="separator"></div>
                            	<p>Make your stay a comfortable one with only the best bang for your buck. You will never get anything better than this for the price u pay.</p>
                            <a href="roomStandard1.aspx" class=" btn btn-primary">See more!</a>
                        </div>
                    </div>
                  </div>
              </div>
                </section>

        <section class="text-center page-header" id="mainAbout">
            <div class="container">
                <h1>About us</h1>
                <div class="separator"></div>
                <div id ="aboutUs">
                 <p><strong>This budget hotel, set along a bustling pedestrian street in the heart of Chinatown, lies 5 minutes' walk away from the famous, Central Market, 9 minutes' walk from the historical Merdeka Square and 10 minutes' walk from the conveniently located Kuala Lumpur train station.</strong></p>
            </div>
            </div>
        </section>


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
