<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="CookNook.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Checkout</title>
    <link href="css/home.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 126px;
        }
        .auto-style2 {
            width: 20px;
        }
    </style>
</head>
<body>
        <header>
            <img alt="Logo" src="images/logo.jpg" />CookNook.com</header>
    <form id="form1" runat="server" method="post">
        <nav>
            <a href="default.aspx">Home ::</a> 
            <a href="recipes.aspx">Recipes ::</a> 
            <a href="chat.aspx">Chat ::</a> 
            <a href="order.aspx">Products ::</a> 
            <a href="aboutus.aspx">About Us :: </a>
            <a href="sitemap.aspx">Sitemap ::</a> 
            <a class="register" href="new_user.aspx">Registration</a> 
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </nav>
        <p>
            <asp:SiteMapPath ID="SiteMapPath1" runat="server">
            </asp:SiteMapPath>
        </p>
        <table class="form">
            <tr>
                <td class="auto-style2" colspan="1">
                    <asp:Label ID="LabelDate" runat="server" Text="Date: "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="LblDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelFirst" runat="server" Text="First Name: "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="LblFirst" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelLast" runat="server" Text="Last Name: "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="LblLast" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelCity" runat="server" Text="City: "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="LblCity" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelState" runat="server" Text="State: "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="LblState" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelZip" runat="server" Text="Zip: "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="LblZip" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelAddress" runat="server" Text="Address: "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="LblAddress" runat="server"></asp:Label>
                </td>
            </tr>
           
            <tr>
                <td class="td"></td>
                <td class="td" colspan="1" rowspan="2">
                    <asp:Button ID="edit" runat="server" OnClick="edit_Click" OnClientClick="Windows.history.back(1); return false;" Text="Edit" Width="79px" />
                    <asp:Button ID="confirm" runat="server" OnClick="confirm_Click" Text="Confirm" Width="79px" />
                </td>
            </tr>
        </table>
        <footer>
            <p>designed by: Krys Ragan 2014</p>
        </footer>
    </form>
</body>
</html>
