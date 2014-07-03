<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_user.aspx.cs" Inherits="CookNook.new_user" %>
<%@ Import Namespace =" System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Registration</title>
     <link href="css/home.css" rel="stylesheet" />
    <script type="text/javascript" src="js/JScript.js" ></script>
    <style type="text/css">
  
    </style>
</head>
<body>
<header><img src="images/logo.jpg" alt="Logo" />CookNook.com</header> 
    
    <form id="form1" runat="server" method="post">
 <nav>
    <a href="default.aspx">Home ::</a>
    <a href="recipes.aspx">Recipes ::</a>
    <a href="chat.aspx">Chat ::</a>
    <a href="order.aspx">Products ::</a>
    <a href="aboutus.aspx">About Us :: </a>
     <a href="sitemap.aspx">Sitemap ::</a>
    <a href="new_user.aspx" class="register">Registration</a>
     <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </nav>
        <p>
                <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </p>
  
    <table class="form" >
        <tr>
        <td colspan="1" class="style7">
            <asp:Label ID="LabelDate" runat="server" Text="Date: "></asp:Label>
            </td>
           <td class="style6"> <asp:TextBox ID="TextBoxDate" runat="server" Width="100%"></asp:TextBox>
        </td></tr>
       <tr> <td class="style8">
            <asp:Label ID="LabelFirst" runat="server" Text="First Name: "></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFirst" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators" Cssclass="validator">*Required </asp:RequiredFieldValidator>
           </td>
          <td class="style6">  <asp:TextBox ID="TextBoxFirst" runat="server" Width="100%"></asp:TextBox>
        </td></tr>
   <tr> <td class="style7">
        <asp:Label ID="LabelLast" runat="server" Text="Last Name: "></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Cssclass="validator" ControlToValidate="TextBoxLast" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators">*Required </asp:RequiredFieldValidator>
       </td>
       <td class="style6"> <asp:TextBox ID="TextBoxLast" runat="server" Width="100%"></asp:TextBox>
    </td></tr>
       <tr> <td class="style7">
            <asp:Label ID="LabelEmail" runat="server" Text="Email: "></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Cssclass="validator" ControlToValidate="TextBoxEmail" SetFocusOnError="true" Display="Dynamic" ErrorMessage="name@domain.xyz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="AllValidators">*Invalid Format!</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Cssclass="validator" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators" ControlToValidate="TextBoxEmail" SetFocusOnError="true">*Required </asp:RequiredFieldValidator>
           </td>
          <td class="style6">  <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" Width="100%"></asp:TextBox>
        </td></tr>
        <tr><td class="style7">
            <asp:Label ID="LabelPhone" runat="server" Text="Phone(000)000-0000: "></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxPhone" SetFocusOnError="true" CssClass="validator" Display="Dynamic" ErrorMessage="Invalid Format!" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="AllValidators">*Invalid Format!</asp:RegularExpressionValidator>
            </td>
            <td class="style6"><asp:TextBox ID="TextBoxPhone" runat="server" TextMode="Phone" Width="100%"></asp:TextBox>
        </td></tr>
       <tr> <td class="style7">
            <asp:Label ID="LabelPassword" runat="server" Text="Password: "></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Cssclass="validator" ControlToValidate="TextBoxPassword" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators">*Required </asp:RequiredFieldValidator>
           </td>
            <td class="style6"><asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="100%"></asp:TextBox>
        </td></tr>
        <tr><td class="style7">
            <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password:" ></asp:Label>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirm" Display="Dynamic" ErrorMessage="CompareValidator" Cssclass="validator2" ValidationGroup="AllValidators">*Password does not match!</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxConfirm" SetFocusOnError="true" Cssclass="validator" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators">*Required</asp:RequiredFieldValidator>
            </td>
            <td class="style6"><asp:TextBox ID="TextBoxConfirm" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
            </td></tr>
        <tr><td class="style7">
            <asp:Label ID="LabelAddress" runat="server" Text="Address: "></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Cssclass="validator" ControlToValidate="TextBoxAddress" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators">*Required</asp:RequiredFieldValidator>
            </td>
           <td class="style6"> <asp:TextBox ID="TextBoxAddress" runat="server" Width="100%"></asp:TextBox>
        </td></tr>
        <tr><td class="style7">
            <asp:Label ID="LabelCity" runat="server" Text="City"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Cssclass="validator" ControlToValidate="TextBoxCity" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators">*Required</asp:RequiredFieldValidator>
            </td>
           <td class="style6"> <asp:TextBox ID="TextBoxCity" runat="server" Width="100%"></asp:TextBox>
        </td></tr>
        <tr><td class="style7"><asp:Label ID="LabelState" runat="server" Text="State: "></asp:Label>
            </td>
        <td class="style6"><asp:DropDownList ID="DropDownListState" runat="server" Width="100%">
            <asp:ListItem Text="Alaska" Value="AK" />
            <asp:ListItem Text="California" Value="CA" />
            <asp:ListItem Text="Montana" Value="MT" />
            <asp:ListItem Text="Oregon" Value="OR" />
            <asp:ListItem Text="Washington" Value="WA" />
            </asp:DropDownList></td>
        </tr>
          <tr><td class="style7">  <asp:Label ID="LabelZip" runat="server" Text="Zip"></asp:Label>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Cssclass="validator" ControlToValidate="TextBoxZip" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Must be in the form of a valid zipcode" ValidationExpression="\d{5}(-\d{4})?" ValidationGroup="AllValidators">*Invalid Format!</asp:RegularExpressionValidator>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Cssclass="validator" Display="Dynamic" ErrorMessage="Required Field" ValidationGroup="AllValidators" ControlToValidate="TextBoxZip" SetFocusOnError="true" >*Required</asp:RequiredFieldValidator>
              </td>
           <td class="style6"> 
               <asp:TextBox ID="TextBoxZip" runat="server" Width="100%"></asp:TextBox>
        </td></tr>
        <tr><td colspan="2">
            <asp:Button ID="submit" runat="server" Text="Submit" Width="79px" OnClick="submit_Click" ValidationGroup="AllValidators" />
        </td></tr>
    </table>
          
        <footer>
        
            
            <p>designed by: Krys Ragan 2014</p>
        </footer>
    </form>
</body>
</html>
