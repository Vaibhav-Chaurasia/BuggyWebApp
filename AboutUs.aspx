<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BuggyWebApp.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type = "text/javascript">  
        window.onload = function () {
            if (navigator.userAgent.indexOf("Firefox") > 0) {
                document.body.innerHTML = '';
                alert("You can't access this page on Firefox");
            }        
        }
    </script>
    <style type="text/css">
    .style9
    {
        font-size: x-large;
        font-weight: bold;
        text-decoration: underline;
        color: #FFFFCC;
    }
    .style10
    {
        background-color: #660066;
    }
    .style11
    {
        font-size: large;
        font-weight: bold;
        color: #CC3399;
    }
    .style12
    {
        background-color: #FFFF66;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style9">
    <span class="style10">ABOUT US:-</span></p>
<p class="style11">
    <span class="style12">To be a LEading Global Bank with Pan India footprints and 
    become a hOUsehold brand in the Indo-Gangetic Plains providing entire range of 
    financial products and services under one roof.</span></p>
</asp:Content>