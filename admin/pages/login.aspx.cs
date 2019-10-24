using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_login : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLoginAdmin_Click(object sender, EventArgs e)
    {
        var u = db.Users.Where(d => d.Email == txtUserName.Text && d.Password == txtPassword.Text && d.Role=="Admin").FirstOrDefault();
        if (u != null)
        {
            Session["un"] = txtUserName.Text;
            Session["ur"] = u.Role;
            //Session["uid"] = u.Id;

            if (u.Role == "Admin")
            {
                Response.Redirect("Default.aspx");
            }
            else if (u.Role == "customer")
            {
                Response.Redirect("Clients/Default.aspx");
            }

        }
        else
        {
            Label1.Text = "wrong information";
        }
    }
}