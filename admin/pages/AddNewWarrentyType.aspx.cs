using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_AddNewWarrentyType : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void btnWarrentyType_Click(object sender, EventArgs e)
    {
        Warrenty wrty = new Warrenty();

        try
        {
            string wrt = txtWarrentyType.Text;
            Warrenty wr = db.Warrenties.ToList().SingleOrDefault(d => d.WarrentyType == wrt);
            if (wr.WarrentyType == wrt)
            {
                lblSuccessMessage.Text = "";
                lblAlertMessage.Text = txtWarrentyType.Text + " Warrenty Type is Already Exiest!";
            }
            else
            {

            }
        }
        catch (Exception)
        {

            wrty.WarrentyType = txtWarrentyType.Text;

            db.Warrenties.Add(wrty);
            db.SaveChanges();

            txtWarrentyType.Text = "";
            lblAlertMessage.Text = "";
            lblSuccessMessage.Text = "Warrenty Type Insert Successfully!";
        }

    }
}