<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BuggyWebApp.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type = "text/javascript">  
        window.onload = function () {
            if (navigator.userAgent.indexOf("Firefox") > 0) {
                document.body.style.backgroundColor = "#AA0000";
            }        
        }
    </script>  
    <style type="text/css">
        .style9
        {
            font-size: large;
            font-weight: bold;
            text-decoration: underline;
        }
        .style11
        {
            color: #000000;
            font-size: medium;
            background-color: #FFFFFF;
        }
        .style17
        {
            font-weight: bold;
            color: #000000;
            font-size: medium;
            background-color: #FFFFFF;
        }
    </style>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
   

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="MsoNormal">
        <span style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;; color: #2058C3; mso-font-kerning: 18.0pt" 
            class="style9">
        Please ensure the following before logging in</span><span 
        style="font-size: 12.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p></o:p></span></p>
<ul type="disc">
    <li class="MsoNormal">
        <span style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;" 
            class="style17">
        URL address on the address bar of your internet browser begins with &quot;https&quot;; the 
        letter &#39;s&#39; at the end of &quot;https&quot; means &#39;secured&#39;.</span><span 
            style="font-size: 12.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p></o:p></span></li>
    <li class="MsoNormal">
        <span style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;" 
            class="style17">
        Look for the padlock symbol either in the address bar or the status bar (mostly 
        in the address bar) but not within the web page display area. Verify the 
        security certificate by clicking on the padlock.</span><span 
            style="font-size: 12.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p></o:p></span></li>
    <li class="MsoNormal">
        <span style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;" 
            class="style17">
        The address bar has turned to green indicating that the site is secured with an 
        SSL Certificate that meets the Extended Validation Standard.(Available in IE 7.0 
        and above, Mozilla Firefox 3.1 and above, Opera 9.5 and above, Safari 3.5 and 
        above, Google chrome).</span><span 
            style="font-size: 12.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p></o:p></span></li>
    <li class="MsoNormal" style="font-weight: bold">
        <span style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;" 
            class="style11">
        Do not enter login or other sensitive information in any pop up window.</span><o:p></o:p></li>
</ul>
<p class="MsoNormal">
    <span style="font-size: 12.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;">
    &nbsp;</span></p>
<p class="MsoNormal">
    <span style="font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;; color: #2058C3; mso-font-kerning: 18.0pt" 
        class="style9">
    Beware of Phishing attacks</span><span 
        style="font-size: 12.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p></o:p></span></p>
    <ul>
        <li class="MsoNormal">
            <span style="font-size:24pt; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;" 
            >Phishing is a fraudulent attempt, usually made through email, phone calls, SMS 
        etc seeking your personal and confidential information.</span><span 
            style="font-size: 6.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;"><o:p></o:p></span></li>
        <li><span style="font-size:6pt">State Bank or any of its representative never sends you 
        email/SMS or calls you over phone to get your personal information, password or 
        one time SMS (high security) password. Any such e-mail/SMS or phone call is an 
        attempt to fraudulently withdraw money from your account through Internet 
        Banking. Never respond to such email/SMS or phone call. Please report 
        immediately .If you receive any such email/SMS or Phone call. Immediately change 
        your passwords if you have accidentally revealed your credentials.</span></li>
    </ul>
</asp:Content>