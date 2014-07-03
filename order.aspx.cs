using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookNook
{
    public partial class order : System.Web.UI.Page
    {
        string addToPurchase;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            GridViewRow myRow = GridViewProducts.SelectedRow;
            double priceSelection = double.Parse(myRow.Cells[5].Text);
            TextBox txtSelection = (TextBox)myRow.FindControl("TextBoxQty");
            int qtySelection = int.Parse(txtSelection.Text);
            double total = priceSelection * qtySelection;
            
            addToPurchase += "<h2>Item: <span class='myCart'>" + myRow.Cells[3].Text + "</span> Price:" + "<span class='myCart'>$" +
                 myRow.Cells[5].Text + "</span>Qty:<span class='myCart'> " +
                 txtSelection.Text + "</span>Cost: <span class='myCart'> $" +
                 priceSelection * qtySelection + "</span>" + "<span class='myCart'>Order Total:</span>" + total;


            total += total;
            cart.InnerHtml += addToPurchase;
            

            Checkout.Visible = true;

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //if (Session["User"] != null)
             //       Response.Redirect("checkout.aspx");
            //else
                Response.Redirect("Login.aspx");
                }
            }
        }
