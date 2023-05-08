<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.Master" AutoEventWireup="True" CodeBehind="RequestingChequeBook.aspx.cs" Inherits="BuggyWebApp.User.RequestingChequeBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        text-align: left;
        font-weight: bold;
        text-decoration: underline;
        color: #666699;
    }
        .style4
        {
            width: 98%;
        }
        .style5
        {
            width: 199px;
            margin-left: 200px;
        }
        .style6
        {
            width: 723px;
        }
        .style7
        {
            width: 199px;
            height: 26px;
            font-weight: bold;
        }
        .style8
        {
            width: 723px;
            height: 26px;
        }
        .style9
        {
            width: 183px;
        }
        .style10
        {
            width: 183px;
            height: 26px;
        }
        .style11
        {
            width: 199px;
            margin-left: 200px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style3">
    REQUEST FOR NEW CHEQUE BOOK:-</p>
<p class="style3">
    &nbsp;</p>
    <table class="style4">
        <tr>
            <td class="style11">
                <asp:Label ID="Label1" runat="server" Text="Customer Name"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="txtcustname" runat="server"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please Enter Customer Name" ControlToValidate="txtcustname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label2" runat="server" Text="Account Number"></asp:Label>
            </td>
            <td class="style10">
                <asp:TextBox ID="txtaccno" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtaccno" ErrorMessage="Please Enter your Account Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="Label4" runat="server" Text="Number of Cheque Books"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="txtnoofchequebook" runat="server"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtnoofchequebook" 
                    ErrorMessage="Not more than 2 Cheque books" MaximumValue="2" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="Label5" runat="server" Text="Number of Pages in Cheque Book"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="txtnoofpages" runat="server"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ErrorMessage="Not more than 50 pages Cheque book" MaximumValue="50" 
                    MinimumValue="25" ControlToValidate="txtnoofpages"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lblsuccess" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lblfailure" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>