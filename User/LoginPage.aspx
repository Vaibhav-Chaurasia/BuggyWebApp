<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="True" CodeBehind="LoginPage.aspx.cs" Inherits="BuggyWebApp.User.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
            height: 2px;
        }
        .style6
        {
            width: 454px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5">
        <tr>
            <td>
                <b>
    <asp:Label ID="Label2" runat="server" Text="Userid"></asp:Label>
                </b>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Please Enter the Userid"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>
<asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
&nbsp;&nbsp;
<br />
                </b>
            </td>
            <td class="style6">
<asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please Enter your password" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblsuccess" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
