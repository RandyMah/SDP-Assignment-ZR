<%@ Page Language="VB" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="utf-8"/>
    <link href="css/mainContent.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/jquery.datetimepicker.css" rel="stylesheet" />
    <script src="/js/jquery.js"></script>
    <script src="/js/jquery.datetimepicker.full.min.js"></script>

  <title>Book Here</title>
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
            
        <div class="container">
            <div class="container-figure">
            <div class="col-lg-12">
                <div class="form-horizontal">
                <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="I.C Number" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                 <asp:TextBox ID="txtICnumber" runat="server" placeholder="I.C Number" CssClass="form-control" required="required"></asp:TextBox>
                            </div>
                        </div>
                    <div class="form-group">
                            <asp:Label ID="lbltypeofsuite" runat="server" Text="Type of suite" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                     <asp:ListItem>Presidential suite</asp:ListItem>
                                     <asp:ListItem>Luxury suite</asp:ListItem>
                                     <asp:ListItem>Standard suite</asp:ListItem>
                                 </asp:DropDownList>
                            </div>
                        </div>
                    <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Number of occupants" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="txtOccupants" runat="server" placeholder="Number of occupants" CssClass="form-control" required="required" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Check-in date" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="date_timepicker_start" runat="server" placeholder="Check-in date" CssClass="form-control" required="required"></asp:TextBox> 
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Check-out date" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <asp:TextBox ID="date_timepicker_end" runat="server" placeholder="Check-out date" CssClass="form-control" required="required"></asp:TextBox>
                </div>
            </div>
                    <asp:Button ID="Button1" runat="server" Text="Button" data-toggle="modal" data-target="#myModal" OnClientClick="return false"/>
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

    
        
    
     <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" tabindex="-1">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Pay here!</h4>
        </div>
        <div class="modal-body">

            <div class="form-inline">
                <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">$</div>
                    <asp:TextBox ID="txtAmount" runat="server" placeholder="Amount" CssClass="form-control" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                        <div class="input-group-addon">.00</div>
                        </div>
               </div>
            
                <div class="form-group">
                    <label class="sr-only">Amount (in MYR)</label>
                        <div class="input-group">
                            <div class="input-group-addon">$</div>
                    <asp:TextBox ID="txtConfirmAmount" runat="server" placeholder="Confirm Amount" CssClass="form-control" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
                        <div class="input-group-addon">.00</div>
                        </div> 
               </div>
              
            </div>
                </div>
        </div>

        <div class="modal-footer">
            <asp:Button ID="btnPay" runat="server" Text="Submit" cssClass="btn btn-default"/>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
    </form>
       <script  type ="text/javascript">
            jQuery(function () {
                jQuery('#date_timepicker_start').datetimepicker({
                    format: 'Y/m/d',
                    onShow: function (ct) {
                        this.setOptions({
                            maxDate: jQuery('#date_timepicker_end').val() ? jQuery('#date_timepicker_end').val() : false
                        })
                    },
                    timepicker: false
                });
                jQuery('#date_timepicker_end').datetimepicker({
                    format: 'Y/m/d',
                    onShow: function (ct) {
                        this.setOptions({
                            minDate: jQuery('#date_timepicker_start').val() ? jQuery('#date_timepicker_start').val() : false
                        })
                    },
                    timepicker: false
                });
            });
        </script>
</body>
</html>
