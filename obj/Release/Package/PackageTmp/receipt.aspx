<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="receipt.aspx.cs" Inherits="CookNook.receipt" %>

<%@ Import Namespace =" System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
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
<header><img src="images/logo.jpg" alt="Logo" />CookNook.com</header>
    <form id="form1" runat="server" method="post">
 <nav>
<a href="default.aspx">Home ::</a>
    <a href="recipes.html">Recipes ::</a>
    <a href="chat.html">Chat ::</a>
    <a href="order.aspx">Products ::</a>
    <a href="aboutus.html">About Us :: </a>
    <a href="new_user.aspx" class="register">Registration </a>
    </nav>
    <table class="form" >
        <tr>
        <td colspan="1" class="auto-style2">
            <asp:Label ID="LabelDate" runat="server" Text="Date: "></asp:Label></td>
           <td class="auto-style1"> 
               <asp:Label ID="LblDate" runat="server"></asp:Label>
        </td></tr>
       <tr> <td class="auto-style2">
            <asp:Label ID="LabelFirst" runat="server" Text="First Name: "></asp:Label></td>
          <td class="auto-style1">  
              <asp:Label ID="LblFirst" runat="server"></asp:Label>
        </td></tr>
   <tr> <td class="auto-style2">
        <asp:Label ID="LabelLast" runat="server" Text="Last Name: "></asp:Label></td>
       <td class="auto-style1"> 
           <asp:Label ID="LblLast" runat="server"></asp:Label>
    </td></tr>
       <tr> <td class="auto-style2">
            <asp:Label ID="LabelEmail" runat="server" Text="Email: "></asp:Label></td>
          <td class="auto-style1">  
              <asp:Label ID="LblEmail" runat="server"></asp:Label>
        </td></tr>
        <tr><td class="auto-style2">
            <asp:Label ID="LabelPhone" runat="server" Text="Phone: "></asp:Label></td>
            <td class="auto-style1">
                <asp:Label ID="LblPhone" runat="server"></asp:Label>
        </td></tr>
       <tr> <td class="auto-style2">
            <asp:Label ID="LabelPassword" runat="server" Text="Password: "></asp:Label></td>
            <td class="auto-style1">
                <asp:Label ID="LblPass" runat="server"></asp:Label>
        </td></tr>
        <tr><td class="auto-style2">
            <asp:Label ID="LabelAddress" runat="server" Text="Address: "></asp:Label></td>
           <td class="auto-style1"> 
               <asp:Label ID="LblAddress" runat="server"></asp:Label>
        </td></tr>
        <tr><td class="auto-style2">
            <asp:Label ID="LabelCity" runat="server" Text="City"></asp:Label></td>
           <td class="auto-style1"> 
               <asp:Label ID="LblCity" runat="server"></asp:Label>
        </td></tr>
        <tr><td class="auto-style2"><asp:Label ID="LabelState" runat="server" Text="State: "></asp:Label></td>
        <td class="auto-style1">
            <asp:Label ID="LblState" runat="server"></asp:Label>
            </td>
        </tr>
          <tr><td class="auto-style2">  <asp:Label ID="LabelZip" runat="server" Text="Zip"></asp:Label></td>
           <td class="auto-style1"> 
               <asp:Label ID="LblZip" runat="server"></asp:Label>
        </td></tr>
        <tr><td class="td"></td><td colspan="1" rowspan="2" class="td">
             <asp:Button ID="edit" runat="server" Text="Edit" Width="79px" OnClick="edit_Click" OnClientClick="Windows.history.back(1); return false;"/>
        <asp:Button ID="confirm" runat="server" Text="Confirm" Width="79px" OnClick="confirm_Click" />
           </td></tr>
    </table>
        <footer>
            <p>designed by: Krys Ragan 2014</p>
        </footer>
    </form>
</body>
</html>

