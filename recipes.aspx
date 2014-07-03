<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recipes.aspx.cs" Inherits="CookNook.recipes" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="utf-8" />
        <title>Recipes</title>
        <link href="css/home.css" rel="stylesheet" />
        <link href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="stylesheet" />
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <link href="/resources/demos/style.css" rel="stylesheet" />
  <script>
      $(function () {
          $("#tabs").tabs();
      });
  </script>
</head>
    <body>
        <header><img alt="Logo" src="images/logo.jpg" />CookNook.com</header>
        
      <form id="form1" runat="server">
    <nav>
    <a href="default.aspx">Home ::</a>
    <a href="recipes.aspx" class="recipes">Recipes ::</a>
    <a href="chat.aspx">Chat ::</a>
    <a href="order.aspx">Products ::</a>
    <a href="aboutus.aspx">About Us ::</a>
    <a href="sitemap.aspx">Sitemap ::</a>
    <a href="new_user.aspx">Registration</a>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </nav>
        <p>
            <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
        </p>
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Entrees</a></li>
    <li><a href="#tabs-2">Salads</a></li>
    <li><a href="#tabs-3">Beverages</a></li>
      <li><a href="#tabs-2">Appetizers</a></li>
      <li><a href="#tabs-2">Sides</a></li>
      <li><a href="#tabs-3">Desserts</a></li>
  </ul>
  <div id="tabs-1">
     <p><h1>Pork Steaks</h1> <img src="images/pork.jpg" alt="Pork Steaks" /></p>
    <h2>Ingredients</h2>
    <p>Original recipe makes 6 servings</p>
<h4>1/4 cup butter</h4>
 <h4>1/4 cup soy sauce</h4>
 <h4>1 bunch green onions</h4>
      <h2>Directions</h2>
       <h4>1. Melt butter in a skillet, and mix in the soy sauce.</h4>
      <h4>2. Saute the green onions and garlic until lightly browned.</h4>
      <h4>3. Place the pork steaks in the skillet, cover, and cook 8 to 10 minutes on each side</h4>
      <h4>4. Remove cover, and continue cooking 10 minutes, or to an internal temperature of 145 degrees F (63 degrees C).</h4>
  </div>
  <div id="tabs-2">
    <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
  </div>
  <div id="tabs-3">
    <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>
    <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
  </div>

</div>
          
<footer><p>designed by: Krys Ragan 2014</p></footer>

      </form>
</body>
</html>
  