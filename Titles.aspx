<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Titles.aspx.cs" Inherits="Titles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 34%;
        }
        .auto-style3 {
            height: 28px;
        }
        .bodyimage {
            background-image:url("Pic/titles.jpg");
            background-size:cover;
            background-repeat:no-repeat;
        }
        input[type=text],[type=date] {
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
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Title ID" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" OnClick="Button3_Click" class="button" Width="194px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Title" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Psearch" OnClick="Button4_Click"  class="button" Width="194px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Type" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="150px"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button5" runat="server" Text="Report" class="button" Width="194px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Publish ID" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="45px" AutoPostBack="True" Font-Size="Large" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Price" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Advance" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Ytd Sales" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Contract" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Notes" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Publish Date" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Width="180px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Font-Size="Large" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="New" class="button1" OnClick="Button1_Click"/>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" class="button"/>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="573px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [titles]"></asp:SqlDataSource>
    </form>
</body>
</html>
