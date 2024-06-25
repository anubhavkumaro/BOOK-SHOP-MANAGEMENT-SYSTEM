

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMenu.aspx.cs" Inherits="MyMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Menu.css" rel="stylesheet" />
    <style>
        .menu, #Menu1 {
            padding-left:10px;
        }
        .menu {
            margin-top:20px;
            margin-left:45px;
        }
        body {
            background-color: lightblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="menu">
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#F4B9FB" Height="80px" Width="95%" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="30px" ForeColor="Black" StaticSubMenuIndent="10px" Orientation="Horizontal">
            <DynamicHoverStyle  ForeColor="White" BorderStyle="Solid" BorderColor="black"  BackColor="#990000" />
            <DynamicMenuItemStyle HorizontalPadding="50px" VerticalPadding="2px" BorderStyle="Solid" BorderColor="red" />
            <DynamicMenuStyle BackColor="#ADB8B3"  />
            <DynamicSelectedStyle BackColor="#18A3F7" />
            <DynamicItemTemplate>
                <%# Eval("Text") %>
            </DynamicItemTemplate>
            <Items>
                <asp:MenuItem Text="Outhors" Value="Outhors"  >
                    <asp:MenuItem NavigateUrl="~/Outhors.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateOuthors.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteOuthors.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportOuthors.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AllSearchAuthors.aspx" Text="All Search" Value="All Search"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Publishers" Value="Publishers">
                    <asp:MenuItem NavigateUrl="~/Publishers.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdatePublishers.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeletePublishers.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportPublishers.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AllSearchPublishers.aspx" Text="All Search" Value="All Search"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Sales" Value="Sales">
                    <asp:MenuItem NavigateUrl="~/Sales.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateSales.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteSales.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportSales.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AllSearchSales.aspx" Text="All Search" Value="All Search"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Salesdetails" Value="Salesdetails">
                    <asp:MenuItem NavigateUrl="~/Salesdetails.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateSalesdetails.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteSalesdetails.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportSalesdetails.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AllSearchSalesdetails.aspx" Text="All Search" Value="All Search"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Titleauthors" Value="Titleauthors">
                    <asp:MenuItem NavigateUrl="~/Titleauthors.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateTitleauthors.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteTitleauthors.aspx" Text="Delete" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportTitleauthors.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AllSearchTitleauthors.aspx" Text="All Search" Value="All Search"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Titleeditors" Value="Titleeditors">
                    <asp:MenuItem NavigateUrl="~/Titleeditors.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateTitleeditors.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteTitleeditors.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportTitleeditors.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AllSearchTitleeditors.aspx" Text="All Search" Value="All Search"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Titles" Value="Titles">
                    <asp:MenuItem NavigateUrl="~/Titles.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateTitles.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteTitles.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportTitles.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AllSearchTitles.aspx" Text="All Search" Value="All Search"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Editors" Value="Editors">
                    <asp:MenuItem NavigateUrl="~/Editors.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateEditors.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteEditors.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportEditors.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AllSearchEditors.aspx" Text="All Search" Value="All Search"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" BorderStyle="Solid" BorderColor="black"/>
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="20px"  />
            <StaticSelectedStyle BackColor="#FFCC66" BorderStyle="Solid" BorderColor="red" />
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
