using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CookNook
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["User"] = 0;
        }

        protected void LoginUser(Object s, EventArgs e)
        {
            if (Membership.ValidateUser(this.email.Text, this.password.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(email.Text, true);
                //Session["User"] = 1;
            }
            else
            {
                Msg.Visible = true;
                Msg.Text = "Login failed. Please check your email/password and try again.";
            }
            if (email.Text == "email" && password.Text == "password")
            {
               FormsAuthentication.RedirectFromLoginPage(email.Text, false);
               //Session["User"] = 1;
            }
            else
            {
                Msg.Visible = true;
                Msg.Text = "Login failed. Please check your email/password and try again.";
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }

        protected void Logout(Object s, EventArgs e)
            {
                FormsAuthentication.SignOut();
                Response.Redirect("default.aspx");
            }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("new_user.aspx");
        }

        protected void Browse_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
        }
    }