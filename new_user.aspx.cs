using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;


namespace CookNook
{
    public partial class new_user : System.Web.UI.Page
    {

        String cnStr = "Data Source=134.39.173.35;Initial Catalog=RAGAN_w13;Persist Security Info=True;User ID=RAGAN_w13;Password=password";
        String strSQL;

        SqlConnection cn = new SqlConnection();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxDate.Text = DateTime.Now.ToString("M/d/yyyy");
        }




        protected void submit_Click(object sender, EventArgs e)
        {
            
            members mymembers = new members();
            mymembers.FirstName = TextBoxFirst.Text;
            mymembers.LastName = TextBoxLast.Text;
            mymembers.Password = TextBoxPassword.Text;
            mymembers.Email = TextBoxEmail.Text;
            mymembers.Phone = TextBoxPhone.Text;
            mymembers.Address = TextBoxAddress.Text;
            mymembers.City = TextBoxCity.Text;
            mymembers.State = DropDownListState.SelectedValue;
            mymembers.Zip = TextBoxZip.Text;
            mymembers.Date = TextBoxDate.Text;
            Session["mySession"] = mymembers;

            cn.ConnectionString = cnStr;
            cn.Open();
            strSQL = "Insert into Customers(First, Last, Password, Email, Address, City, State, Date, Phone, Zip)" + 
                "Values('" + TextBoxFirst.Text + "','" +
                TextBoxLast.Text + "','" +
                TextBoxPassword.Text + "','" +
                TextBoxEmail.Text + "','" +
                TextBoxAddress.Text + "','" +
                TextBoxCity.Text + "','" +
                DropDownListState.SelectedValue + "','" +
                TextBoxDate.Text + "','" +
                TextBoxPhone.Text + "','" +
                TextBoxZip.Text + "')";
            SqlCommand cmd = new SqlCommand(strSQL, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
           
                if (Page.IsValid)
                {
                    Session["Home"] = 1;
                    Response.Redirect("receipt.aspx");
                }
            }
        

        protected void TextBoxDate_TextChanged(object sender, EventArgs e)
        {

        }
    }


}
