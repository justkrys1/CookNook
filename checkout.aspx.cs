using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookNook
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Home"] == null)
                Response.Redirect("default.aspx");
              mymembers = (members) Session["mySession"];
            if (Session["mySession"] != null)
            {
                LblDate.Text = DateTime.Now.ToString("M/d/yyyy");
                LblFirst.Text = mymembers.FirstName;
                LblLast.Text = mymembers.LastName;
                LblAddress.Text = mymembers.Address;
                LblCity.Text = mymembers.City;
                LblState.Text = mymembers.State;
                LblZip.Text =  mymembers.Zip;
                
            }

        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("order.aspx");
        }

        public members mymembers { get; set; }
    }
}
