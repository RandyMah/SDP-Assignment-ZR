<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registerpage.aspx.vb" Inherits="Register_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/mainContent.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/mainContentjs.js"></script>
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
                  <a href="Rooms/room.aspx">Rooms</a>
               </li>
               <li>
                  <a href="Mainpage.aspx">About us</a>
               </li>
               <li>
                  <a href="Registerpage.aspx">Register</a>
               </li>
               <li>
                  <a href="Loginpage.aspx">Login</a>
               </li>
            </ul>
         </div>
      </div>
   </nav>
   <form id="form1" runat="server">
      <div id="form-page">
         <section class="page-header">
            <div class="container">
               <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
                  <div id="banner">
                     <h1>Hotel China Town Inn</h1>
                     <h3>Customer registration</h3>
                  </div>
               </div>
               <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                  <div class="formSection">
                     <div class ="form-horizontal">
                        <fieldset>
                           <legend>Registration Details</legend>
                           <div class="form-group">
                              <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="col-lg-2 control-label"></asp:Label>
                              <div class="col-lg-10">
                                 <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="form-control" required="required"></asp:TextBox>
                              </div>
                           </div>
                           <div class="form-group">
                              <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-2 control-label"></asp:Label>
                              <div class="col-lg-10">
                                 <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password" required="required"></asp:TextBox>
                              </div>
                           </div>
                           <div class="form-group">
                              <asp:Label ID="lblName" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
                              <div class="col-lg-10">
                                 <asp:TextBox ID="txtName" runat="server" placeholder="Name" CssClass="form-control" required="required"></asp:TextBox>
                              </div>
                           </div>
                           <div class="form-group">
                              <asp:Label ID="lblICnumber" runat="server" Text="I.C Number" CssClass="col-lg-2 control-label"></asp:Label>
                              <div class="col-lg-10">
                                 <asp:TextBox ID="txtICnumber" runat="server" placeholder="I.C Number" CssClass="form-control" required="required" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                              </div>
                           </div>
                           <div class="form-group">
                              <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass="col-lg-2 control-label"></asp:Label>
                              <div class="col-lg-10">
                                 <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" required="required"></asp:TextBox>
                              </div>
                           </div>
                           <div class="form-group">
                              <asp:Label ID="Label1" runat="server" Text="Contact Number" CssClass="col-lg-2 control-label"></asp:Label>
                              <div class="col-lg-10">
                                 <asp:TextBox ID="txtContact" runat="server" placeholder="011-1234567" CssClass="form-control" required="required" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                              </div>
                           </div>
                           <div class="form-group">
                              <asp:Label ID="lblGender" runat="server" Text="Gender" CssClass="col-lg-2 control-label"></asp:Label>
                              <div class="col-lg-10">
                                 <div class="radio">
                                    <label>
                                       <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                          <asp:ListItem Selected="True">Male</asp:ListItem>
                                          <asp:ListItem>Female</asp:ListItem>
                                       </asp:RadioButtonList>
                                    </label>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <div class="col-lg-10 col-lg-offset-2">
                                 <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success" Text="Submit" />
                                 <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" />
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
</body>
</html>