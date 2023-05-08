<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.Master" AutoEventWireup="True" CodeBehind="UserAccessingPage.aspx.cs" Inherits="BuggyWebApp.User.UserAccessingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        font-weight: bold;
        text-decoration: underline;
        font-size: xx-large;
        height: 39px;
    }
    .style3
    {
        text-decoration: underline;
        font-size: xx-large;
        height: 36px;
        text-align: center;
        font-weight: bold;
        width: 928px;
        margin-bottom: 3px;
    }
        .style4
        {
            font-size: large;
            font-weight: bold;
            color: #6699FF;
        }
        .style5
        {
            background-color: #FF6699;
        }
        .style6
        {
            background-color: #CCFF66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style3">
    Personal Banking - Key Features</p>
<ul>
    <li class="style4">
        <span class="style5"><span class="style6">
        <asp:HyperLink ID="HyperLink10" runat="server" 
        NavigateUrl="~/User/CustomerDetails.aspx">Customer Details</asp:HyperLink>
        </span></span>
    </li>
    <li class="style4">
        <span class="style5"><span class="style6">
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/User/MoneyTransfer.aspx">Money Transfer</asp:HyperLink>
        </span></span>
    </li>
    <li class="style4">
        <span class="style5"><span class="style6">
        <asp:HyperLink ID="HyperLink8" runat="server" 
            NavigateUrl="~/User/RequestsThroughCustomers.aspx">Requesting Duplicate ATM</asp:HyperLink>
        </span></span>
    </li>
    <li class="style4">
        <span class="style5"><span class="style6">
        <asp:HyperLink ID="HyperLink11" runat="server" 
            NavigateUrl="~/User/MoneyTransferDetails.aspx">Account Details</asp:HyperLink>
        </span></span>
    </li>
    <li class="style4">
        <span class="style5"><span class="style6">
        <asp:HyperLink ID="HyperLink12" runat="server" 
            NavigateUrl="~/User/MoneyTransferDetails.aspx">Money Transfer Details</asp:HyperLink>
        </span></span>
    </li>
    <li class="style4">
        <span class="style5"><span class="style6">
        <asp:HyperLink ID="HyperLink13" runat="server" 
            NavigateUrl="~/User/RequestingChequeBook.aspx">Requesting New Cheque Book</asp:HyperLink>
        </span></span>
    </li>
    <li class="style4">
        <span class="style5"><span class="style6">
        <asp:HyperLink ID="HyperLink14" runat="server" 
            NavigateUrl="~/User/DownloadForms.aspx">Download Forms</asp:HyperLink>
        </span></span>
    </li>
    <li class="style4">
        <span class="style5"><span class="style6">
        <asp:HyperLink ID="HyperLink15" runat="server" 
            NavigateUrl="~/User/IncomeTaxFiling.aspx">Income Tax Filing Form</asp:HyperLink>
        </span></span>
    </li>
</ul>
</asp:Content>