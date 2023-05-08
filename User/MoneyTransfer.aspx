<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.Master" AutoEventWireup="True" CodeBehind="MoneyTransfer.aspx.cs" Inherits="BuggyWebApp.User.MoneyTransfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: left;
            font-weight: 700;
            text-decoration: underline;
            font-size: large;
        }
        .style4
        {
            width: 100%;
        }
        .style6
        {
            width: 236px;
        }
        .style9
        {
            height: 48px;
            width: 488px;
            color: #FF0000;
        }
        .style10
        {
            width: 488px;
        }
        .style12
        {
            width: 217px;
        }
        .style13
        {
            width: 217px;
            height: 42px;
        }
        .style14
        {
            width: 236px;
            height: 42px;
        }
        .style15
        {
            width: 488px;
            height: 42px;
        }
        .style16
        {
            width: 217px;
            height: 48px;
            font-weight: bold;
        }
        .style17
        {
            width: 236px;
            height: 48px;
        }
        .style18
        {
            width: 217px;
            height: 42px;
            font-weight: bold;
        }
        .style19
        {
            width: 217px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style3">
        MONEY TRANSFER:-</p>
    <table class="style4">
        <tr>
            <td class="style16">
                <asp:Label ID="Label1" runat="server" Text="Type Of Account"></asp:Label>
            </td>
            <td class="style17">
                <asp:DropDownList ID="DropDownListAcctype" runat="server">
                    <asp:ListItem>Savings</asp:ListItem>
                    <asp:ListItem>Current</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style9">
                * Please Select Account type corectly</td>
        </tr>
        <tr>
            <td class="style19">
                <asp:Label ID="Label2" runat="server" Text="Account Number"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtaccno" runat="server"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:Label ID="Label5" runat="server" ForeColor="Red" 
                    Text="Enter the Account Number to which money has been transferred"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19">
                <asp:Label ID="Label3" runat="server" Text="Amount to Transfer"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txtamt" runat="server"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="Label4" runat="server" 
                    Text="Name of the Bank where transaction takes place"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter the Name of the Bank" ControlToValidate="txtname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="lblsuccess" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style6">
                <asp:Label ID="lblbeftrans" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="lblfailure" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style6">
                <asp:Label ID="lblafttrans" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>