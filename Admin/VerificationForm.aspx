<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.Master" AutoEventWireup="True" CodeBehind="VerificationForm.aspx.cs" Inherits="BuggyWebApp.Admin.VerificationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-decoration: underline;
            font-weight: bold;
        }
    .style3
    {
        width: 100%;
    }
        .style6
        {
            width: 355px;
        }
        .style7
        {
            width: 297px;
        }
        .style8
        {
            width: 355px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: left" class="style4">
    ACCOUNT NUMBER VERIFICATION</p>
    <table class="style3">
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label8" runat="server" Text="Enter Account Length"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtacclength" runat="server"></asp:TextBox>
                <asp:Button ID="btnaccGenerate" runat="server" onclick="btnaccGenerate_Click" 
                    Text="Generate" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label runat="server" Text="Account Number" ID="Label5"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtaccno" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label2" runat="server" Text="Minimum Amount"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtminamt" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label3" runat="server" Text="Enter Userid Length"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtuseridlength" runat="server"></asp:TextBox>
                <asp:Button ID="btnGenerateUser" runat="server" onclick="btnGenerate1_Click" 
                    Text="Generate" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label6" runat="server" Text="Generated Useid"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtuserid" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label4" runat="server" Text="Enter Password Length"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtpasslength" runat="server"></asp:TextBox>
                <asp:Button ID="btnGeneratePass" runat="server" onclick="btnGenerate2_Click" 
                    Text="Generate" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label7" runat="server" Text="Generated Password"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" Text="Complete" 
                    onclick="Button1_Click" />
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lblsuccess" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="lblfailure" runat="server" ForeColor="Red"></asp:Label>
            &nbsp;<asp:Label ID="lblemail" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
    <asp:HyperLink ID="HyperLink5" runat="server" 
        NavigateUrl="~/Admin/AllAccountDetails.aspx">Customer Details</asp:HyperLink>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>