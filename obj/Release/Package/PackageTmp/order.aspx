<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="CookNook.order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order</title>
    <link href="css/home.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
         <nav>
<a href="default.aspx">Home ::</a>
    <a href="recipes.html">Recipes ::</a>
    <a href="chat.html">Chat ::</a>
    <a href="order.aspx" class="products">Products ::</a>
    <a href="aboutus.html">About Us :: </a>
    <a href="new_user.aspx">Registration </a>
    </nav>
    <div>
    
        <asp:GridView ID="GridViewProducts" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#F7EBD6" BorderColor="#660033" BorderStyle="Ridge" BorderWidth="3px" CellPadding="1" Height="429px" HorizontalAlign="Center" OnSelectedIndexChanged="GridViewProducts_SelectedIndexChanged" PageSize="6" Width="871px">
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="Purchase" SelectText="Add to Cart" ShowSelectButton="True">
                <ControlStyle BackColor="White" />
                <HeaderStyle BackColor="#FF9933" BorderColor="#660033" BorderStyle="Ridge" BorderWidth="2px" ForeColor="#660033" HorizontalAlign="Center" />
                <ItemStyle BackColor="#FFCC66" HorizontalAlign="Center" Width="120px" />
                </asp:CommandField>
                <asp:BoundField DataField="Item Number" HeaderText="Item Number" SortExpression="Item Number" InsertVisible="False" ReadOnly="True" >
                <ControlStyle Width="100px" />
                <HeaderStyle BackColor="#FF9933" BorderColor="#660033" BorderWidth="2px" Font-Bold="True" ForeColor="#660033" />
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Image" HeaderText="Image" DataImageUrlFormatString="~/images/{0}">
                    <HeaderStyle BackColor="#FF9933" BorderColor="#660033" BorderStyle="Ridge" BorderWidth="2px" Font-Bold="True" ForeColor="#660033" HorizontalAlign="Center" />
                <ItemStyle Width="100px" HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" >
                <HeaderStyle BackColor="#FF9933" BorderColor="#660033" BorderStyle="Ridge" BorderWidth="2px" Font-Bold="True" ForeColor="#660033" />
                <ItemStyle Width="300px" />
                </asp:BoundField>
                <asp:BoundField DataField="In Stock" HeaderText="In Stock" SortExpression="In Stock" >
                <HeaderStyle BackColor="#FF9933" BorderColor="#660033" BorderStyle="Ridge" BorderWidth="2px" Font-Bold="True" ForeColor="#660033" />
                <ItemStyle Width="100px" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                <HeaderStyle BackColor="#FF9933" BorderColor="#660033" BorderStyle="Ridge" BorderWidth="2px" Font-Bold="True" ForeColor="#660033" />
                <ItemStyle Width="100px" HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Qty">
                    <ItemTemplate><asp:TextBox ID="TextBoxQty" runat="server" Width="100%"></asp:TextBox>
        </td></tr></ItemTemplate>
                    <ItemStyle Width="100px" CssClass="padding" />
                </asp:TemplateField>
                
                
                
            </Columns>
            <FooterStyle BackColor="#F7EBD6" />
            <HeaderStyle BackColor="#FF9933" />
            <SelectedRowStyle BackColor="#F7EBD6" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RAGAN_w13ConnectionString %>" SelectCommand="SELECT * FROM [merchandise]"></asp:SqlDataSource>
    <h1>Cart:</h1>
        
        <div id="cart" runat="server">
    </div>
    </div>
<footer>
            <p>designed by: Krys Ragan 2014</p>
        </footer>
    </form>
</body>
</html>
