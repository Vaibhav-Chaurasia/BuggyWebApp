<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="True" CodeBehind="AccountOpeningForm.aspx.cs" Inherits="BuggyWebApp.User.AccountOpeningForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style9
    {
        font-size: x-large;
        font-weight: bold;
    }
        .style10
        {
            width: 100%;
        }
        .style11
        {
            width: 303px;
        }
        .style12
        {
            width: 278px;
        }
        .style13
        {
            width: 303px;
            height: 26px;
            font-weight: bold;
        }
        .style14
        {
            width: 278px;
            height: 26px;
        }
        .style15
        {
            height: 26px;
        }
        .style16
        {
            width: 303px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style9">
        <span class="style8">You have to fill these details and all fields were cumpulsory to be filled</span>:-</p>
    <table class="style10">
        <tr>
            <td class="style16">
                <asp:Label ID="Label20" runat="server" Text="Salutation"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddlsal" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Ms</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Dr.</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Prof.</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label1" runat="server" Text="Full Name of Customer"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtcustname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcustname" ErrorMessage="Please Enter Your Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label2" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="DropDownList1" runat="server">
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
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label3" runat="server" Text="Mother's Name"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtmomname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtmomname" ErrorMessage="Please Enter Your Mother's Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label4" runat="server" Text="Annual Income"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddlincome" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1">Below 1 lakh</asp:ListItem>
                    <asp:ListItem Value="3">Between 1 and 3 lakh</asp:ListItem>
                    <asp:ListItem Value="6">Between 3 and 6 lakh</asp:ListItem>
                    <asp:ListItem Value="12">Between 6 and 12 lakh</asp:ListItem>
                    <asp:ListItem Value="9999">Above 12 lakh</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label5" runat="server" Text="Residential Status"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddlresidence" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Row Houses</asp:ListItem>
                    <asp:ListItem>Rent</asp:ListItem>
                    <asp:ListItem>Flat</asp:ListItem>
                    <asp:ListItem>Appartment</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label6" runat="server" Text="Time at Current Residence"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddlresyr" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>&lt;1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>&gt;9</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddlgender" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label8" runat="server" Text="Marital Status"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddlmarital" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Widow</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label9" runat="server" Text="Pan Number"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtpanno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpanno" ErrorMessage="Enter Your Pan Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label10" runat="server" Text="Permanent Address"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtadd" ErrorMessage="Enter Your Address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label11" runat="server" Text="State"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddlstate" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Gujrat</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Jammu &amp; Kashmir</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>UttarPradesh</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label12" runat="server" Text="City"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="Enter the City you live in"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label13" runat="server" Text="Telephone Number(R)"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txttelnor" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label14" runat="server" Text="Telephone Number(M)"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txttelnom" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label26" runat="server" Text="Type of Account"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddlacctype" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Savings</asp:ListItem>
                    <asp:ListItem>Current</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label15" runat="server" Text="E-mail Id"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter correct Email address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Type in 
                this format example.abc@mail.com</asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label16" runat="server" Text="Office Address"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtoffadd" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtoffadd" ErrorMessage="Enter your Office Address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label17" runat="server" Text="Office Tel Number"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtofftelno" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Label ID="Label18" runat="server" Text="Fax Number"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="txtfax" runat="server"></asp:TextBox>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label19" runat="server" Text="Education"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddledu" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Under Graduate</asp:ListItem>
                    <asp:ListItem>Post Graduate</asp:ListItem>
                    <asp:ListItem>Professional</asp:ListItem>
                    <asp:ListItem>Under Matriculation</asp:ListItem>
                    <asp:ListItem>High School</asp:ListItem>
                    <asp:ListItem>Senior Secondary</asp:ListItem>
                    <asp:ListItem>Any Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label21" runat="server" Text="Nominee's Name"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtnomname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtmomname" ErrorMessage="Enter the Nominee's Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label22" runat="server" Text="Nominee's Date of Birth"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList5" runat="server">
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
                <asp:DropDownList ID="DropDownList6" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label23" runat="server" Text="Relation With You"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtrelation" runat="server" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtrelation" 
                    ErrorMessage="Enter the Relation of Nominee with You"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label24" runat="server" Text="Nominee's Resdential Address"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtnomadd" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtnomadd" ErrorMessage="Enter the Address of Nominee"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label25" runat="server" Text="Address Proof"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddladdproof" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Voter Id Card</asp:ListItem>
                    <asp:ListItem>Electricity Bills</asp:ListItem>
                    <asp:ListItem>Telephone Bills</asp:ListItem>
                    <asp:ListItem>Premium from any lic company</asp:ListItem>
                    <asp:ListItem>Consumer gas connection bill</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Regd" />
            &nbsp;
                <asp:Button ID="Reset" runat="server" Text="Reset" />
            </td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="lblsuccess" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="lblfailure" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="lblpanno" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>