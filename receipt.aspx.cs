using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookNook
{
    public partial class receipt : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Home"] == null)
                Response.Redirect("default.aspx");
            members mymembers = new members();
            mymembers = (members) Session["mySession"];
            if (Session["mySession"] != null)
            {
               LblFirst.Text = mymembers.FirstName;
               LblLast.Text = mymembers.LastName;
                LblPass.Text = mymembers.Password;
                LblEmail.Text = mymembers.Email;
                LblPhone.Text = mymembers.Phone;
                LblAddress.Text = mymembers.Address;
                LblCity.Text = mymembers.City;
                LblState.Text = mymembers.State;
                LblZip.Text =  mymembers.Zip;
                LblDate.Text = mymembers.Date;
            }

        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("new_user.aspx");
        }
    }
}