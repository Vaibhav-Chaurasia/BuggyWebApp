<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="True" CodeBehind="ChangePassword.aspx.cs" Inherits="BuggyWebApp.User.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5">
        <tr>
            <td>
                <b>
                <asp:Label ID="Label4" runat="server" Text="Userid"></asp:Label>
                </b>
            </td>
            <td>
                <asp:TextBox ID="txtusername" onpaste="return false" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <b>
                <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                </b>
            </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <b>
                <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                </b>
            </td>
            <td>
                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <b>
                <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                </b>
            </td>
            <td>
                <asp:TextBox ID="txtconfpass" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Ok" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblsuccess" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblfailure" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
