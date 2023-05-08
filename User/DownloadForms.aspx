<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.Master" AutoEventWireup="True" CodeBehind="DownloadForms.aspx.cs" Inherits="BuggyWebApp.User.DownloadForms" %>
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
        Download Forms</p>
    <p class="style3">
        </p>

   
        <asp:Button ID="btnMethodOne" runat="server" Text="Download Offline Account Opening Form" onclick="btnMethodOne_Click" />
    
        <br />
    
        <br />

        <asp:Button ID="btnMethodTwo" runat="server" Text="Download PF Opening Form" onclick="btnMethodTwo_Click" />
   

    <br />
    <br />

        <asp:Button ID="FDFormDownload" runat="server" NavigateUrl="~/Profiles.aspx" Text="Download Fixed Deposit Opening Form" />
   

    <br />
    <br />

        <asp:Button ID="CashDepositSlip" runat="server" onclick="CashDeposit_Click" Text="Download Cash Deposit Slip" />
   

</asp:Content>
