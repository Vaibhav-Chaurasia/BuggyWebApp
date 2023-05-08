<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.Master" AutoEventWireup="True" CodeBehind="CustomerDetails.aspx.cs" Inherits="BuggyWebApp.User.CustomerDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Panno" 
    DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        BackColor="White" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" AllowPaging="True" BorderColor="#CCCCCC" 
        BorderStyle="None" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <Columns>
        <asp:BoundField DataField="Custname" HeaderText="Custumer Name" 
            SortExpression="Custname" />
        <asp:BoundField DataField="DOB" HeaderText="Date Of Birth" 
            SortExpression="DOB" />
        <asp:BoundField DataField="Mothername" HeaderText="Mother's Name" 
            SortExpression="Mothername" />
        <asp:BoundField DataField="Annincome" HeaderText="Annual Income" 
            SortExpression="Annincome" />
        <asp:BoundField DataField="Resstatus" HeaderText="Residential Status" 
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
        <asp:BoundField DataField="relation" HeaderText="Relation" 
            SortExpression="relation" />
        <asp:BoundField DataField="nomrestype" HeaderText="Nominee's Residential Address" 
            SortExpression="nomrestype" />
        <asp:BoundField DataField="addproof" HeaderText="Address Proof" 
            SortExpression="addproof" />
        <asp:BoundField DataField="Acctype" HeaderText="Account Type" 
            SortExpression="Acctype" />
    </Columns>
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ONLINEBANKINGConnectionString2 %>" 
    ProviderName="<%$ ConnectionStrings:abc.ProviderName %>" 
    
        SelectCommand="SELECT DISTINCT * FROM [CustomerDetails] WHERE ([Panno] = @Panno)">
    <SelectParameters>
        <asp:SessionParameter Name="Panno" SessionField="pan" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
