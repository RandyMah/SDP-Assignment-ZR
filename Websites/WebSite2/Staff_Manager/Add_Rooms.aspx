<%@ Page Title="" Language="VB" MasterPageFile="~/Staff_Manager/SM-Main.master" AutoEventWireup="false" CodeFile="Add_Rooms.aspx.vb" Inherits="Staff_Manager_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">

        <div class="col-md-12 center-block">
            <h1>Create Rooms</h1>
        </div>

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Description:</h4>
        </div>

        <div class="col-md-9">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

    </div>


    <div class="row">

        <div class="col-md-3" style="left: 0px; top: 0px">
            <h4>Types of Suite:</h4>
        </div>

        <div class="col-md-9">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True" Value="0">Please Select a Room</asp:ListItem>
                <asp:ListItem Value="1">Luxury</asp:ListItem>
                <asp:ListItem Value="2">Business</asp:ListItem>
                <asp:ListItem Value="3">Economy</asp:ListItem>
            </asp:DropDownList>
        </div>
        
        
    </div>
    
    <div class="row">
        <div class="col-md-12">
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <div class="alert alert-danger">
                    <p>Please Select a Suite</p>
                </div>
            </asp:Panel>
        </div>
        <div class="col-md-12" style="left: 0px; top: 0px">
            <asp:Button ID="Button1" runat="server" Text="Create" CssClass="btn btn-info center-block" />
        </div>

    </div>
</asp:Content>