<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllSearchSales.aspx.cs" Inherits="AllSearchSales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:DropDownList ID="DropDownList1" runat="server" >
            <asp:ListItem>sale_id</asp:ListItem>
            <asp:ListItem>store_id</asp:ListItem>
            <asp:ListItem>sdate</asp:ListItem>
        </asp:DropDownList>
        
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="sale_id" HeaderText="sale_id" SortExpression="sale_id" />
                <asp:BoundField DataField="store_id" HeaderText="store_id" SortExpression="store_id" />
                <asp:BoundField DataField="sdate" HeaderText="sdate" SortExpression="sdate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sales]"></asp:SqlDataSource>
    </form>
</body>
</html>
