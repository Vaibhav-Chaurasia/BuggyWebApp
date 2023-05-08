<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.Master" AutoEventWireup="true" CodeBehind="MoneyTransferDetails.aspx.cs" Inherits="BuggyWebApp.User.MoneyTransferDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="sno" EmptyDataText="There are no data records to display." 
        BackColor="#CCCCCC" CellPadding="4" CellSpacing="2" ForeColor="Black" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="tdatetime" HeaderText="Amount Transaction Time" 
                SortExpression="tdatetime" />
            <asp:BoundField DataField="Details" HeaderText="Particulars" 
                SortExpression="Details" />
            <asp:BoundField DataField="Dr/cr" HeaderText="Dr/Cr" />
            <asp:BoundField DataField="AmtTransfer" HeaderText="Amount" 
                SortExpression="AmtTransfer" />
            <asp:BoundField DataField="Balance" HeaderText="Total Balance" 
                SortExpression="Balance" />
        </Columns>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:abc %>" 
        DeleteCommand="DELETE FROM [MoneyTransferDetails] WHERE [sno] = @sno" 
        InsertCommand="INSERT INTO [MoneyTransferDetails] ([Accno], [Dr/cr], [Details], [Balance], [AmtTransfer], [tdatetime]) VALUES (@Accno, @column1, @Details, @Balance, @AmtTransfer, @tdatetime)" 
        ProviderName="<%$ ConnectionStrings:abc.ProviderName %>" 
        SelectCommand="SELECT [sno], [Accno], [Dr/cr] AS column1, [Details], [Balance], [AmtTransfer], [tdatetime] FROM [MoneyTransferDetails]" 
        UpdateCommand="UPDATE [MoneyTransferDetails] SET [Accno] = @Accno, [Dr/cr] = @column1, [Details] = @Details, [Balance] = @Balance, [AmtTransfer] = @AmtTransfer, [tdatetime] = @tdatetime WHERE [sno] = @sno">
        <DeleteParameters>
            <asp:Parameter Name="sno" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Accno" Type="Int64" />
            <asp:Parameter Name="column1" Type="Boolean" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Balance" Type="Int64" />
            <asp:Parameter Name="AmtTransfer" Type="Int64" />
            <asp:Parameter Name="tdatetime" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Accno" Type="Int64" />
            <asp:Parameter Name="column1" Type="Boolean" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Balance" Type="Int64" />
            <asp:Parameter Name="AmtTransfer" Type="Int64" />
            <asp:Parameter Name="tdatetime" Type="DateTime" />
            <asp:Parameter Name="sno" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
