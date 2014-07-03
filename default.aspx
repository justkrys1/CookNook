﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CookNook._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>CookNook by Krys</title>
    <link href="css/home.css" rel="stylesheet" />
</head>
<body>

<header><img src="images/logo.jpg" alt="Logo" />CookNook.com</header>
<form id="form1" runat="server">
        <nav>
            <a href="default.aspx" class="home">Home ::</a>
            <a href="recipes.aspx">Recipes ::</a>
            <a href="chat.aspx">Chat ::</a>
            <a href="order.aspx">Products ::</a>
            <a href="aboutus.aspx">About Us :: </a>
            <a href="sitemap.aspx">Sitemap ::</a>
            <a href="new_user.aspx">Registration</a>
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </nav>
    
      <div id="home1">
          <img src="images/home1.jpg" alt="Utensils" class="image" /><img src="images/home2.jpg" alt="Spoon" class="image" /><img src="images/home3.jpg" alt="Knives" class="image" />
      </div>

<p>
Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.

Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.

Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.

Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.

Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.
</p>
<p></p>
          
 <section class="center">
 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <asp:Timer ID="Timer1" runat="server" Interval="10000"></asp:Timer>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
         <Triggers><asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" /></Triggers>
         <ContentTemplate>
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" KeywordFilter="Google"/>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/ads.xml"></asp:XmlDataSource>
         </ContentTemplate>
     </asp:UpdatePanel>
</section>

        <footer>
            <p>designed & programmed by: Krys Ragan 2014</p>
        </footer>
    </form>
</body>
</html>
