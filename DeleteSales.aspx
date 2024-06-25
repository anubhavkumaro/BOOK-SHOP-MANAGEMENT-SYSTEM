<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteSales.aspx.cs" Inherits="Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 171%;
        }
        .auto-style2 {
            width: 360px;
        }
        .auto-style3 {
            width: 286px;
        }
        .auto-style4 {
            width: 286px;
            height: 30px;
        }
        .auto-style5 {
            width: 360px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .bodyimage {
            background-image:url("Pic/sales.jpg");
            background-size:cover;
            background-repeat:no-repeat;
        }
        input[type=text] {
            width: 300px;
            height:45px;
            padding: 7px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid red;
        }
        
        
        
        .button {
            display: inline-block;
            outline: none;
            cursor: pointer;
            font-size: 14px;
            line-height: 1;
            border-radius: 500px;
            transition-property: background-color,border-color,color,box-shadow,filter;
            transition-duration: .3s;
            border: 1px solid transparent;
            letter-spacing: 2px;
            min-width: 160px;
            text-transform: uppercase;
            white-space: normal;
            font-weight: 700;
            text-align: center;
            padding: 17px 48px;
            color: #fff;
            background-color: #1ED760;
            }
                    .button:hover{
                        transform: scale(1.04);
                        background-color: #21e065;
                    }
                    .button1 {
            display: inline-block;
            outline: none;
            cursor: pointer;
            font-size: 14px;
            line-height: 1;
            border-radius: 500px;
            transition-property: background-color,border-color,color,box-shadow,filter;
            transition-duration: .3s;
            border: 1px solid transparent;
            letter-spacing: 2px;
            min-width: 160px;
            text-transform: uppercase;
            white-space: normal;
            font-weight: 700;
            text-align: center;
            padding: 17px 48px;
            color: #fff;
            background-color: rgb(252, 127, 127);
            }
                    .button1:hover{
                        transform: scale(1.04);
                        background-color: rgb(255, 0, 0);
                    }
        body {
            margin-top:30px;
            margin-left:350px;
        }
    </style>
</head>
<body style="width: 329px" class="bodyimage">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Sale id"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="ballsearch" CssClass="button" runat="server" Text="Allsearch" Width="194px" OnClick="ballsearch_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Store id"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="bpsearch" CssClass="button" runat="server" Text="Psearch" Width="194px" OnClick="bpsearch_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="breport" CssClass="button" runat="server" Text="Report" Width="194px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="bnew" CssClass="button1" runat="server" Text="New" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="bsave" CssClass="button1" runat="server" Text="Delete" OnClick="bsave_Click" />
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="330px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="sale_id" HeaderText="sale_id" SortExpression="sale_id" />
                <asp:BoundField DataField="store_id" HeaderText="store_id" SortExpression="store_id" />
                <asp:BoundField DataField="sdate" HeaderText="sdate" SortExpression="sdate" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sales]"></asp:SqlDataSource>
    </form>
</body>
</html>
