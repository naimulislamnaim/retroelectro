using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_AddDiviaion : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    GridViewDivision.DataSource = db.Divisions.ToList();
        //    GridViewDivision.DataBind();
        //}

        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void btnAddDivision_Click(object sender, EventArgs e)
    {
        Division divi = new Division();
        try
        {
            string div = txtDivisionName.Text.ToLower();
            Division di = db.Divisions.ToList().SingleOrDefault(d => d.DivisionName == div);
            if (di.DivisionName==div)
            {
                lblSuccessMessage.Text = "";
                lblAlertMessage.Text = txtDivisionName.Text + " Division is Already Exiest!";
            }
            else
            {
                
            }
        }
        catch (Exception)
        {

            divi.DivisionName = txtDivisionName.Text;
            divi.DivisionDescription = txtDivisionDescription.Text;

            db.Divisions.Add(divi);
            db.SaveChanges();

            txtDivisionName.Text = "";
            txtDivisionDescription.Text = "";
            lblAlertMessage.Text = "";
            lblSuccessMessage.Text = "Division Insert Successfully!";
        }

        
    }
}