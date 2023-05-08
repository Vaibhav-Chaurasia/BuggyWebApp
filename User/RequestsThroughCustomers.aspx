<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.Master" AutoEventWireup="True" CodeBehind="RequestsThroughCustomers.aspx.cs" Inherits="BuggyWebApp.User.RequestsThroughCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-decoration: underline;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 198px;
        }
        .style7
    {
        width: 198px;
        font-weight: bold;
    }
        .style8
        {
            width: 256px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        <span class="style3">IN CASE OF LOSS OF ATM FILL THIS FORM TO RETRIEVE YOUR NEW 
        ATM</span>:-</h2>
    <table class="style4">
        <tr>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Text="Account Number"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtaccno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Enter your Account Number" ControlToValidate="txtaccno"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label2" runat="server" Text="ATM Number"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtatmno" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label3" runat="server" Text="Password of ATM card"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label4" runat="server" Text="Date of loss"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>JAN</asp:ListItem>
                    <asp:ListItem>FEB</asp:ListItem>
                    <asp:ListItem>MAR</asp:ListItem>
                    <asp:ListItem>APR</asp:ListItem>
                    <asp:ListItem>MAY</asp:ListItem>
                    <asp:ListItem>JUN</asp:ListItem>
                    <asp:ListItem>JULY</asp:ListItem>
                    <asp:ListItem>AUG</asp:ListItem>
                    <asp:ListItem>SEP</asp:ListItem>
                    <asp:ListItem>OCT</asp:ListItem>
                    <asp:ListItem>NOV</asp:ListItem>
                    <asp:ListItem>DEC</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label5" runat="server" Text="Place of Loss"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtplace" 
                    ErrorMessage="Enter the Place where you Lost your ATM"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label6" runat="server" Text="Customer Name"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtcustname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcustname" ErrorMessage="Enter your Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lblsuccess" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lblfailure" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </asp:Content>