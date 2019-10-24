using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_admin : System.Web.UI.MasterPage
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        string x = (String)(Session["un"]);
        var usr = db.Users.Where(u => u.Email == x).FirstOrDefault();

        LabelUserName.Text = usr.FirstName + " " + usr.LastName + " (" + usr.Role + ")";
    }
}
