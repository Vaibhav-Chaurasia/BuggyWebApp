<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.Master" AutoEventWireup="True" CodeBehind="AdminLogin.aspx.cs" Inherits="BuggyWebApp.Admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 4px;
        }
        .style5
        {
            height: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td>
    <asp:Label ID="Label1" runat="server" Text="Username" style="font-weight: 700"></asp:Label>
&nbsp;</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
            <td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="Enter the Username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label2" runat="server" Text="Password" style="font-weight: 700"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtpass" ErrorMessage="Enter the password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
            </td>
            <td class="style5">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style4">
    &nbsp;<asp:Label ID="Label3" runat="server" AssociatedControlID="Button1" 
        BackColor="White" BorderColor="White" EnableTheming="True" 
        EnableViewState="False" ForeColor="Red"></asp:Label>
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
    </table>
    <br />
</asp:Content>