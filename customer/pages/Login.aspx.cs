using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_pages_Login : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLoginCustomer_Click(object sender, EventArgs e)
    {
        var u = db.Users.Where(d => d.Email == txtUserName.Text && d.Password == txtPassword.Text && d.Role=="Customer").FirstOrDefault();
        if (u != null)
        {
            Session["un"] = txtUserName.Text;
            Session["ur"] = u.Role;
            Session["uid"] = u.Id;
            Session["umail"] = u.Email;

            if (u.Role == "Customer")
            {
                Response.Redirect("Default.aspx");
            }
            
        }
        else
        {
            lblMessage.Text = "wrong information";
        }

    }
}