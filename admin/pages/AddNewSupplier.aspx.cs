using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_AddNewSupplier : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void btnAddSupplier_Click(object sender, EventArgs e)
    {
        Supplier supl = new Supplier();

        try
        {
            string sup = txtSupplierName.Text;
            Supplier su = db.Suppliers.ToList().SingleOrDefault(s => s.SupplierName == sup);
            if (su.SupplierName == sup)
            {
                lblAlertMessage.Text = txtSupplierName.Text + " Supplier Name is Already Exiest!";
            }
            else
            {

            }
        }
        catch (Exception)
        {

            supl.SupplierName = txtSupplierName.Text;
            supl.SupplierEmail = txtSupplierEmail.Text;
            supl.SupplierPhone = txtSupplierPhone.Text;

            db.Suppliers.Add(supl);
            db.SaveChanges();
            txtSupplierName.Text="";
            txtSupplierEmail.Text="";
            txtSupplierPhone.Text="";

            lblSuccessMessage.Text = "Supplier Insert Successfully!";
        }

    }
}