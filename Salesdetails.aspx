<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Salesdetails.aspx.cs" Inherits="Salesdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            width: 313px;
        }
        .auto-style3 {
            width: 221px;
        }
        .bodyimage {
            background-image:url("Pic/salesdetails.jpg");
            background-size:cover;
            background-repeat:no-repeat;
        }
        input[type=text ],[type=date] {
            width: 300px;
            height:45px;
            padding: 7px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid red;
        }
        
        #form1 {
            margin-left:25%;
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
    </style>
</head>
<body class="bodyimage">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Sale ID" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Size="Large" Height="45px" Width="100px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Allsearch" OnClick="Button1_Click" class="button" Width="194px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Title ID" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Font-Size="Large" Height="45px" Width="100px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Psearch" OnClick="Button2_Click" class="button" Width="194px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Qty Ordered" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Report" class="button" Width="194px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Qty Shippled" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Date" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" Text="New" class="button1" OnClick="Button4_Click"/>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button5" runat="server" Text="Save" OnClick="Button5_Click" class="button"/>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="442px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="sale_id" HeaderText="sale_id" SortExpression="sale_id" />
                <asp:BoundField DataField="title_id" HeaderText="title_id" SortExpression="title_id" />
                <asp:BoundField DataField="qty_ordered" HeaderText="qty_ordered" SortExpression="qty_ordered" />
                <asp:BoundField DataField="qty_shippled" HeaderText="qty_shippled" SortExpression="qty_shippled" />
                <asp:BoundField DataField="date1" HeaderText="date1" SortExpression="date1" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [salesdetails]"></asp:SqlDataSource>
    </form>
</body>
</html>
