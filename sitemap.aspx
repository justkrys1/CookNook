<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sitemap.aspx.cs" Inherits="CookNook.sitemap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sitemap</title>
    <meta charset="UTF-8" />
    <link href="css/sitemap.css" rel="stylesheet" />
</head>
<body>
    <header><img src="images/logo.jpg" alt="Logo" />CookNook.com</header>
    <form id="form1" runat="server">
    <div id="center">
        
    <asp:TreeView ID="TreeView1" NodeStyle-CssClass="treeNode" RootNodeStyle-CssClass="rootNode" LeafNodeStyle-CssClass="leafNode" runat="server">
    <Nodes>
      <asp:TreeNode Text="Home" NavigateUrl="~/default.aspx"></asp:TreeNode>
      <asp:TreeNode Text="Chat" NavigateUrl="~/chat.aspx"></asp:TreeNode>
      <asp:TreeNode Text="About Us" NavigateUrl="~/aboutus.aspx"></asp:TreeNode>
      <asp:TreeNode Text="Products" NavigateUrl="~/order.aspx"></asp:TreeNode>
      <asp:TreeNode Text="Registration" NavigateUrl="~/new_user.aspx"></asp:TreeNode>
      <asp:TreeNode Text="Login/Logout" NavigateUrl="~/Login.aspx"></asp:TreeNode>
      <asp:TreeNode Text="Recipes" NavigateUrl="~/recipes.aspx"> 
        <asp:TreeNode Text="Appetizers" NavigateUrl="~/recipes.aspx">
            <asp:TreeNode Text="Caprese Appetizer" NavigateUrl="http://allrecipes.com/Recipe/Caprese-Appetizer/Detail.aspx?event8=1&prop24=SR_Thumb&e11=appetizers&e8=Quick%20Search&event10=1&e7=Recipe%20Hub&soid=sr_results_p1i2"/>
            <asp:TreeNode Text="Shrimp Appetizer" NavigateUrl="http://allrecipes.com/Recipe/Shrimp-Appetizer/Detail.aspx?event8=1&prop24=SR_Thumb&e11=appetizers&e8=Quick%20Search&event10=1&e7=Recipe%20Hub&soid=sr_results_p1i4"/>
            <asp:TreeNode Text="Scallop Appetizer" NavigateUrl="http://allrecipes.com/Recipe/Scallop-Appetizers/Detail.aspx?event8=1&prop24=SR_Thumb&e11=appetizers&e8=Quick%20Search&event10=1&e7=Recipe%20Hub&soid=sr_results_p1i11"/>
        </asp:TreeNode>
        <asp:TreeNode Text="Salads" NavigateUrl="~/recipes.aspx">
            <asp:TreeNode Text="Strawberry Spinach Salad" NavigateUrl="http://allrecipes.com/Recipe/Strawberry-Spinach-Salad-I/Detail.aspx?event8=1&prop24=SR_Thumb&e11=salad&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i2"/>
            <asp:TreeNode Text="Panzanella Salad" NavigateUrl="http://allrecipes.com/Recipe/Panzanella-Salad/Detail.aspx?event8=1&prop24=SR_Thumb&e11=salad&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i14"/>
            <asp:TreeNode Text="Potato Salad" NavigateUrl="http://allrecipes.com/Recipe/Red-Skinned-Potato-Salad/Detail.aspx?event8=1&prop24=SR_Thumb&e11=salad&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i16"/>
        </asp:TreeNode>
        <asp:TreeNode Text="Beverages" NavigateUrl="~/recipes.aspx">
            <asp:TreeNode Text="Shirley Temple" NavigateUrl="http://allrecipes.com/Recipe/Shirley-Temple-from-7UP/Detail.aspx?event8=1&prop24=SR_Thumb&e11=beverages&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i5"/>
            <asp:TreeNode Text="Lemon Kamikaze" NavigateUrl="http://allrecipes.com/Recipe/Lemon-Kamikaze/Detail.aspx?event8=1&prop24=SR_Thumb&e11=beverages&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p2i12"/>
            <asp:TreeNode Text="Eggnog" NavigateUrl="http://allrecipes.com/Recipe/Eggnog/Detail.aspx?event8=1&prop24=SR_Thumb&e11=beverages&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p2i19"/>
        </asp:TreeNode>
        <asp:TreeNode Text="Entrees" NavigateUrl="~/recipes.aspx">
            <asp:TreeNode Text="Chicken Cordon Bleu" NavigateUrl="http://allrecipes.com/Recipe/Chicken-Cordon-Bleu-I/Detail.aspx?event8=1&prop24=SR_Thumb&e11=entrees&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i1"/>
            <asp:TreeNode Text="Barbeque Shrimp" NavigateUrl="http://allrecipes.com/Recipe/New-Orleans-Barbeque-Shrimp/Detail.aspx?event8=1&prop24=SR_Thumb&e11=entrees&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i19"/>
            <asp:TreeNode Text="Beef Wellington" NavigateUrl="http://allrecipes.com/Recipe/Campbells-Kitchen-Beef-Wellington/Detail.aspx?event8=1&prop24=SR_Thumb&e11=beef%20wellington&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i5"/>
        </asp:TreeNode>
        <asp:TreeNode Text="Sides" NavigateUrl="~/recipes.aspx">
            <asp:TreeNode Text="Quinoa" NavigateUrl="http://allrecipes.com/Recipe/Quinoa-Side-Dish/Detail.aspx?event8=1&prop24=SR_Thumb&e11=sides&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i20"/>
            <asp:TreeNode Text="Potato Pancakes" NavigateUrl="http://allrecipes.com/Recipe/Potato-Pancakes/Detail.aspx?event8=1&prop24=SR_Thumb&e11=potatoes&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i21"/>
            <asp:TreeNode Text="Rice Pilaf" NavigateUrl="http://allrecipes.com/Recipe/Classic-Rice-Pilaf/Detail.aspx?event8=1&prop24=SR_Thumb&e11=rice%20pilaf&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i2"/>
        </asp:TreeNode>
        <asp:TreeNode Text="Desserts" NavigateUrl="~/recipes.aspx">
            <asp:TreeNode Text="Tiramisu" NavigateUrl="http://allrecipes.com/Recipe/Tiramisu-Toffee-Dessert/Detail.aspx?event8=1&prop24=SR_Thumb&e11=desserts&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i19"/>
            <asp:TreeNode Text="Cannoli" NavigateUrl="http://allrecipes.com/Recipe/Cannoli-2/Detail.aspx?event8=1&prop24=SR_Thumb&e11=cannoli&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i2"/>
            <asp:TreeNode Text="Turtle Cheesecake" NavigateUrl="http://allrecipes.com/Recipe/Turtle-Cheesecake/Detail.aspx?event8=1&prop24=SR_Thumb&e11=cheesecake&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i10"/>
        </asp:TreeNode>
    </asp:TreeNode>
    </Nodes>
  </asp:TreeView>
  </div>
        
    <footer>
        
      <p>designed by: Krys Ragan 2014</p>
    </footer>
    </form>
</body>
</html>
