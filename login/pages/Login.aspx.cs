using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_pages_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtEmail.Text=="admin@gmail.com" && txtPass.Text=="admin")
        {
            
            Response.Redirect ("/customer/pages/Default.aspx");
        }
    }
}