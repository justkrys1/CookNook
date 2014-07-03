<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="Login.aspx.cs" Inherits="CookNook.Login" Title="Login"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Order</title>
    <link href="css/home.css" rel="stylesheet" />
    </head>
<body>
    <header><img src="images/logo.jpg" alt="Logo" />CookNook.com</header>
    <form id="form1" runat="server">     
    <table class="login">
        <caption id="caption">Login</caption>
    <tr>
        <td>
            <asp:Label ID="LabelEmail" runat="server" Text="Email: " CssClass=""></asp:Label>
            <asp:TextBox ID="email" runat="server" TextMode="Email" Width="100%"/>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Cssclass="validator" ControlToValidate="email" SetFocusOnError="true" Display="Dynamic" ErrorMessage="name@domain.xyz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="AllValidators">*Invalid Format!</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Cssclass="validator" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators" ControlToValidate="email" SetFocusOnError="true">*Required </asp:RequiredFieldValidator>
         </td>
    </tr>
    <tr>
       <td> 
            <asp:Label ID="LabelPassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="password" runat="server" TextMode="Password" Width="100%" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Cssclass="validator" ControlToValidate="password" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators">*Required </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="login" runat="server" Text="Login" OnClick="LoginUser" />
            <asp:Button ID="logout" runat="server" Text="Logout" OnClick="Logout" />
            <asp:Button ID="Register" runat="server" Text="Register" />
            <asp:Button ID="Browse" runat="server" Text="Browse" OnClick="Browse_Click" />

        </td>
    </tr>
     <tr>
         <td> 
            <asp:Label ID="Msg" runat="server" Cssclass="msg" Width="100%" Visible="False" />
        </td>
    </tr>
    </table>
        </form>
    </body>
    </html>
    
