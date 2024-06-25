<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllSearchTitleauthors.aspx.cs" Inherits="AllSearchTitleauthors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>au_id</asp:ListItem>
            <asp:ListItem>title_id</asp:ListItem>
            <asp:ListItem>au_ord</asp:ListItem>
            <asp:ListItem>royalty</asp:ListItem>
            <asp:ListItem>All</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="au_id" HeaderText="au_id" SortExpression="au_id" />
                <asp:BoundField DataField="title_id" HeaderText="title_id" SortExpression="title_id" />
                <asp:BoundField DataField="au_ord" HeaderText="au_ord" SortExpression="au_ord" />
                <asp:BoundField DataField="royalty" HeaderText="royalty" SortExpression="royalty" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [titleauthors]"></asp:SqlDataSource>
    </form>
</body>
</html>
