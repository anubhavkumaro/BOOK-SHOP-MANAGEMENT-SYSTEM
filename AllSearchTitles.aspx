<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllSearchTitles.aspx.cs" Inherits="AllSearchTitles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>title_id</asp:ListItem>
            <asp:ListItem>title</asp:ListItem>
            <asp:ListItem>type1</asp:ListItem>
            <asp:ListItem>pub_id</asp:ListItem>
            <asp:ListItem>price</asp:ListItem>
            <asp:ListItem>advance</asp:ListItem>
            <asp:ListItem>ytd_sales</asp:ListItem>
            <asp:ListItem>contract1</asp:ListItem>
            <asp:ListItem>notes</asp:ListItem>
            <asp:ListItem>pubdate</asp:ListItem>
            <asp:ListItem>All</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="title_id" HeaderText="title_id" SortExpression="title_id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="type1" HeaderText="type1" SortExpression="type1" />
                <asp:BoundField DataField="pub_id" HeaderText="pub_id" SortExpression="pub_id" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="advance" HeaderText="advance" SortExpression="advance" />
                <asp:BoundField DataField="ytd_sales" HeaderText="ytd_sales" SortExpression="ytd_sales" />
                <asp:BoundField DataField="contract1" HeaderText="contract1" SortExpression="contract1" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:BoundField DataField="pubdate" HeaderText="pubdate" SortExpression="pubdate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [titles]"></asp:SqlDataSource>
    </form>
</body>
</html>
