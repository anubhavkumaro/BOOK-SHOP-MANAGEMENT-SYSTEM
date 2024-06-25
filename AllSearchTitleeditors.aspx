<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllSearchTitleeditors.aspx.cs" Inherits="AllSearchTitleeditors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>ed_id</asp:ListItem>
            <asp:ListItem>title_id</asp:ListItem>
            <asp:ListItem>ed_ord</asp:ListItem>
            
            <asp:ListItem>All</asp:ListItem>
            
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ed_id" HeaderText="ed_id" SortExpression="ed_id" />
                <asp:BoundField DataField="title_id" HeaderText="title_id" SortExpression="title_id" />
                <asp:BoundField DataField="ed_ord" HeaderText="ed_ord" SortExpression="ed_ord" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [titleeditors]"></asp:SqlDataSource>
    </form>
</body>
</html>
