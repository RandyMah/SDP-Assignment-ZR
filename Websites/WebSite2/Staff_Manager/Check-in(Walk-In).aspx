<%@ Page Title="" Language="VB" MasterPageFile="~/Staff_Manager/SM-Main.master" AutoEventWireup="false" CodeFile="Check-in(Walk-In).aspx.vb" Inherits="Staff_Manager_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <div class="row">

        <div class="col-md-12 center-block">
            <h1>Check In Without Reservation</h1>
        </div>

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Name:</h4>
        </div>

        <div class="col-md-9">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required ="required" ></asp:TextBox>
        </div>

    </div>

    <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Identification Number:</h4>
        </div>

        <div class="col-md-9">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required ="required" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
        </div>

    </div>

    <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Types of Suite:</h4>
        </div>

        <div class="col-md-9">
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        </div>

    </div>

    <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Check In Date:</h4>
        </div>

        <div class="col-md-9">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" required ="required"></asp:TextBox>
        </div>

    </div>

        <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Check Out Date:</h4>
        </div>

        <div class="col-md-9">
            <asp:Calendar ID="Calendar1" runat="server"  SelectionMode="DayWeekMonth">
            </asp:Calendar>
        </div>

    </div>

        <div class="row">

            <div class="col-md-12" style="left: 0px; top: 0px">
                <asp:Button ID="Button1" runat="server" Text="Check-In" CssClass="btn btn-info center-block" />
            </div>

    </div>
</asp:Content>

