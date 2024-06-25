<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Titleeditors.aspx.cs" Inherits="Titleeditors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 66%;
        }
        .auto-style2 {
            width: 268px;
        }
        .bodyimage {
            background-image:url("Pic/titleeditors.jpg");
            background-size:cover;
            background-repeat:no-repeat;
        }
        input[type=text] {
            width: 100%;
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
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Editors ID" Width="150px" Font-Size="X-Large" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="37px" Width="100px"  Font-Size="Large">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" OnClick="Button3_Click" class="button" Width="194px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Title ID" Width="150px" Font-Size="X-Large" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="37px" Width="100px"  Font-Size="Large" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Psearch" OnClick="Button4_Click" class="button" Width="194px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Editors Order" Width="200px" Font-Size="X-Large" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Report" class="button" Width="193px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="New" class="button1" OnClick="Button1_Click"/>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" class="button"/>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="440px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="ed_id" HeaderText="ed_id" SortExpression="ed_id" />
                <asp:BoundField DataField="title_id" HeaderText="title_id" SortExpression="title_id" />
                <asp:BoundField DataField="ed_ord" HeaderText="ed_ord" SortExpression="ed_ord" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [titleeditors]"></asp:SqlDataSource>
    </form>
</body>
</html>
