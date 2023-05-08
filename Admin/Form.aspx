<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.Master" AutoEventWireup="True" CodeBehind="Form.aspx.cs" Inherits="BuggyWebApp.Admin.Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="Panno" DataSourceID="SqlDataSource1" AllowPaging="True" 
        AllowSorting="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        BackColor="White" CellPadding="3" 
        style="font-weight: 700" BorderColor="#999999" BorderStyle="None" 
        BorderWidth="1px" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Custname" HeaderText="Customer Name" 
            SortExpression="Custname" />
        <asp:BoundField DataField="DOB" HeaderText="Date Of Birth" 
            SortExpression="DOB" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" 
            SortExpression="Gender" />
        <asp:BoundField DataField="Panno" HeaderText="Pan Number" ReadOnly="True" 
            SortExpression="Panno" />
        <asp:BoundField DataField="Addr" HeaderText="Address" SortExpression="Addr" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Telnom" HeaderText="Telephone Number(R)" 
            SortExpression="Telnom" />
        <asp:BoundField DataField="nominename" HeaderText="Nominee Name" 
            SortExpression="nominename" />
        <asp:BoundField DataField="Acctype" HeaderText="Account Type" 
            SortExpression="Acctype" />
        <asp:BoundField DataField="addproof" HeaderText="Address Proof" 
            SortExpression="addproof" />
    </Columns>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#DCDCDC" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ONLINEBANKINGConnectionString %>" 
    SelectCommand="SELECT * FROM [CustomerDetails] WHERE ([verified] = @verified)">
    <SelectParameters>
        <asp:Parameter DefaultValue="false" Name="verified" Type="Boolean" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ONLINEBANKINGConnectionString %>" 
        SelectCommand="SELECT * FROM [CustomerDetails] WHERE ([Panno] = @Panno)">
        <SelectParameters>
            <asp:SessionParameter Name="Panno" SessionField="pan" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        DataSourceID="SqlDataSource2" Height="50px" Width="125px" 
        AutoGenerateRows="False" DataKeyNames="Panno" BackColor="#DEBA84" 
        CellPadding="3" CellSpacing="2" 
        style="font-weight: 700" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="Custname" HeaderText="Customer Name" 
                SortExpression="Custname" />
            <asp:BoundField DataField="DOB" HeaderText="Date Of Birth" 
                SortExpression="DOB" />
            <asp:BoundField DataField="Mothername" HeaderText="Mother's Name" 
                SortExpression="Mothername" />
            <asp:BoundField DataField="Annincome" HeaderText="Annual Income" 
                SortExpression="Annincome" />
            <asp:BoundField DataField="Resstatus" HeaderText="Residencial Status" 
                SortExpression="Resstatus" />
            <asp:BoundField DataField="Yearsatres" HeaderText="Years at Residence" 
                SortExpression="Yearsatres" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Maritalstatus" HeaderText="Marital Status" 
                SortExpression="Maritalstatus" />
            <asp:BoundField DataField="Panno" HeaderText="Pan Number" ReadOnly="True" 
                SortExpression="Panno" />
            <asp:BoundField DataField="Addr" HeaderText="Address" SortExpression="Addr" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Telnor" HeaderText="Telephone Number(R)" 
                SortExpression="Telnor" />
            <asp:BoundField DataField="Telnom" HeaderText="Mobile Number" 
                SortExpression="Telnom" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="offadd" HeaderText="Office Address" 
                SortExpression="offadd" />
            <asp:BoundField DataField="offtelno" HeaderText="Office Telephone Number" 
                SortExpression="offtelno" />
            <asp:BoundField DataField="faxno" HeaderText="Fax Number" 
                SortExpression="faxno" />
            <asp:BoundField DataField="edu" HeaderText="Education" SortExpression="edu" />
            <asp:BoundField DataField="salutation" HeaderText="Salutation" 
                SortExpression="salutation" />
            <asp:BoundField DataField="nominename" HeaderText="Nominee Name" 
                SortExpression="nominename" />
            <asp:BoundField DataField="dobs" HeaderText="Nominee's Date Of Birth" 
                SortExpression="dobs" />
            <asp:BoundField DataField="relation" HeaderText="Relation Of Nominee With You" 
                SortExpression="relation" />
            <asp:BoundField DataField="nomrestype" HeaderText="Nominee's  Residential Address" 
                SortExpression="nomrestype" />
            <asp:BoundField DataField="addproof" HeaderText="Address Proof" 
                SortExpression="addproof" />
            <asp:BoundField DataField="Acctype" HeaderText="Account Type" 
                SortExpression="Acctype" />
        </Fields>
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Verify" />
    <br />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink5" runat="server" 
        NavigateUrl="~/Admin/AllAccountDetails.aspx">Customer Details</asp:HyperLink>
            </asp:Content>