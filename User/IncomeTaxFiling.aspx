<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="True" CodeBehind="IncomeTaxFiling.aspx.cs" Inherits="BuggyWebApp.User.IncomeTaxFiling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
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
    <h1 style="text-align:center;">Income Tax Filing</h1>
    <p>&nbsp;</p>
    <p>
        <asp:Label ID="lblName" runat="server" Text="Name of the Candidate*"></asp:Label>
    &nbsp;
        <asp:TextBox ID="txtBoxName" runat="server"></asp:TextBox>
    </p>

    <p>
        <asp:Label ID="lblPANCard" runat="server" Text="PAN CARD*"></asp:Label>
    &nbsp;
        <asp:TextBox ID="txtBoxPANCard" runat="server"></asp:TextBox>
    </p>

    <p>
        <asp:Label ID="lblEmpCode" runat="server" Text="Employee Code*"></asp:Label>
    &nbsp;
        <asp:TextBox ID="txtBoxEmpCode" runat="server"></asp:TextBox>
    </p>

    <p>
       <asp:Label ID="lblGender" runat="server" Text="Gender*"></asp:Label>
    &nbsp;
        <asp:RadioButton id="radBtnMale" Text="Male" runat="server"></asp:RadioButton>
        &nbsp;
        <asp:RadioButton id="radBtnFemale" Text="Female" runat="server"></asp:RadioButton>
        &nbsp;
        <asp:RadioButton id="radBtnOthers" Text="Other" Selected="True" runat="server"></asp:RadioButton>
    </p>

    <p>
       <asp:Label ID="lblDOB" runat="server" Text="DOB"></asp:Label>
    &nbsp;
        <asp:Calendar runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
    
    </p>
   
    <p>
        <asp:Label runat="server" Text="Contact Number"></asp:Label>
    &nbsp;
        <asp:TextBox ID="txtBoxContactNumber" runat="server"></asp:TextBox>
    </p>
    
    <p>
        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
    &nbsp;<textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea></p>
    <p>
        <asp:Label runat="server" Text="Employee Code" ID="lblEmployeeCode"></asp:Label>
    &nbsp;<asp:TextBox ID="txtBoxEmployeeCode" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblParticulars" runat="server" Text="Select Particulars"></asp:Label>
    &nbsp;<asp:CheckBox ID="chkBoxPF" Text="PF" runat="server" />
&nbsp;<asp:CheckBox ID="chkBoxPPF" Text="PPF" runat="server" />
&nbsp;<asp:CheckBox ID="chkBoxLIP" Text="LIP" runat="server" />
&nbsp;<asp:CheckBox ID="chkBoxMutualFund" Text="Mutual Funds" runat="server" />
&nbsp;<asp:CheckBox ID="chkBoxTuitionFee" Text="Tuition Fees" runat="server" />
    </p>
    <p>
        <asp:Label ID="lblInsurance" runat="server" Text="Medical Insurance"></asp:Label>
    &nbsp;<asp:DropDownList ID="drpdnListInsurance" runat="server">
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>10000</asp:ListItem>
            <asp:ListItem>15000</asp:ListItem>
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>20000</asp:ListItem>
            <asp:ListItem Selected="True">25000</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="lblPANIssueDate" runat="server" Text="PAN Card Issuance Date"></asp:Label>
    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>JAN</asp:ListItem>
                    <asp:ListItem>FEB</asp:ListItem>
                    <asp:ListItem>MAR</asp:ListItem>
                    <asp:ListItem>APR</asp:ListItem>
                    <asp:ListItem>MAY</asp:ListItem>
                    <asp:ListItem>JUN</asp:ListItem>
                    <asp:ListItem>JUL</asp:ListItem>
                    <asp:ListItem>AUG</asp:ListItem>
                    <asp:ListItem>SEP</asp:ListItem>
                    <asp:ListItem>OCT</asp:ListItem>
                    <asp:ListItem>NOV</asp:ListItem>
                    <asp:ListItem>DEC</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="lblUploadDocs" runat="server" Text="Upload Document"></asp:Label>
    &nbsp;<input id="File1" type="file" /></p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" onclick="Submit_Click" />
    &nbsp;<input id="btnReset" type="button" value="Reset" /></p>



    </asp:Content>
