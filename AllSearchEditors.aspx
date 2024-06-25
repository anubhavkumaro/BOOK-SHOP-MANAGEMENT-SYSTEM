<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllSearchEditors.aspx.cs" Inherits="AllSearchEditors" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ed_id" HeaderText="ed_id" SortExpression="ed_id" />
                <asp:BoundField DataField="ed_fnm" HeaderText="ed_fnm" SortExpression="ed_fnm" />
                <asp:BoundField DataField="ed_lnm" HeaderText="ed_lnm" SortExpression="ed_lnm" />
                <asp:BoundField DataField="ed_pos" HeaderText="ed_pos" SortExpression="ed_pos" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="address1" HeaderText="address1" SortExpression="address1" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state1" HeaderText="state1" SortExpression="state1" />
                <asp:BoundField DataField="ed_boss" HeaderText="ed_boss" SortExpression="ed_boss" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [editors]"></asp:SqlDataSource>
    </form>
</body>
</html>
