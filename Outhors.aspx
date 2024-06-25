<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Outhors.aspx.cs" Inherits="Outhors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 41%;
        }
        .auto-style3 {
            width: 146px;
        }
        .auto-style5 {
            width: 129px;
        }
        .auto-style6 {
            width: 120px;
        }
        .bodyimage {
            background-image:url("Pic/authors.jpg");
            background-size:cover;
            background-repeat:no-repeat;
        }
        #form1 {
            margin-left: 25%;
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
    </style>
</head>
    <script>
        function acceptonlynum(evt) {
            a = evt.keyCode
            k = document.getElementById("TextBox4").value
            if (k.length == 10) {
                return false;
            }
            if (a < 48 || a > 57) {
                return false;
                return true;
            }
        }
        function acceptonlychar(evt) {
            a = evt.keyCode
            if ((a < 65 || a > 122) || (a >= 91 && a <= 96)) {
                return false;
                return true;
            }
        }
    </script>
<body class="bodyimage">
    <form id="form1" runat="server">
        
    <div>
    
        <table class="auto-style1" >
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Authors Id" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" Text="Allsearch" OnClick="Button3_Click" Class="button" Width="194px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Authors First Name" Width="300px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button4" runat="server" Text="Psearch" OnClick="Button4_Click" Class="button" Width="194px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Authors Last Name" Width="300px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button5" runat="server" Text="Report" Class="button" Width="194px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Phone" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Address" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="City" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="State" Width="200px" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" Class="button1" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click"  Class="button"/>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    
    </div>
            
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="694px" ShowHeaderWhenEmpty="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="au_id" HeaderText="au_id" SortExpression="au_id" />
                <asp:BoundField DataField="au_fnm" HeaderText="au_fnm" SortExpression="au_fnm" />
                <asp:BoundField DataField="au_lnm" HeaderText="au_lnm" SortExpression="au_lnm" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="address1" HeaderText="address1" SortExpression="address1" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state1" HeaderText="state1" SortExpression="state1" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [outhors]"></asp:SqlDataSource>
            
    </form>
</body>
</html>
