<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllSearchSalesdetails.aspx.cs" Inherits="AllSearchSalesdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>sale_id</asp:ListItem>
            <asp:ListItem>title_id</asp:ListItem>
            <asp:ListItem>qty_ordered</asp:ListItem>
            <asp:ListItem>qty_shippled</asp:ListItem>
            <asp:ListItem>date1</asp:ListItem>
            <asp:ListItem>All</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="sale_id" HeaderText="sale_id" SortExpression="sale_id" />
                <asp:BoundField DataField="title_id" HeaderText="title_id" SortExpression="title_id" />
                <asp:BoundField DataField="qty_ordered" HeaderText="qty_ordered" SortExpression="qty_ordered" />
                <asp:BoundField DataField="qty_shippled" HeaderText="qty_shippled" SortExpression="qty_shippled" />
                <asp:BoundField DataField="date1" HeaderText="date1" SortExpression="date1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [salesdetails]"></asp:SqlDataSource>
    </form>
</body>
</html>
