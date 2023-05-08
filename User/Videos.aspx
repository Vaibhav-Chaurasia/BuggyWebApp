<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="True" CodeBehind="Videos.aspx.cs" Inherits="BuggyWebApp.User.Videos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            font-size: x-large;
            font-weight: bold;
            color: #66FF33;
        }
        .style10
        {
            background-color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>SUN BANK GUIDE</h1>
      <p>The following video provides an introduction to Sun Bank:</p>
      
      <iframe 
         width = "1000" 
         height = "1000" 
         src = "http://www.youtube.com/embed/fxCEcPxUbYA"
         >
      </iframe>
</asp:Content>