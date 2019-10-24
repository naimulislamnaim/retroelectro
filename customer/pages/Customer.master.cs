using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_Customer : System.Web.UI.MasterPage
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
       // LabelCart.Text = "0";

        if (Session["un"]==null)
        {
            beforelogin.Visible = true;
            Label1.Text = "please login!";
        }
        else
        {
            string x = (String)(Session["un"]);
            var usr = db.Users.Where(u => u.Email == x).FirstOrDefault();

            afterlogin.Visible = true;
            Label1.Text = usr.FirstName;
        }



        //count cart item number
        if (Session["dtCount"] != null)
        {
            LabelCart.Text = Session["dtCount"].ToString();
        }
        else
        {
            LabelCart.Text = "0";
        }
    }
}
