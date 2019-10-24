using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_AddNewCategory : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void BtnAddCategory_Click(object sender, EventArgs e)
    {
        Category cate = new Category();

        try
        {
            string cat = TxtCategoryName.Text;
            Category ca = db.Categories.ToList().SingleOrDefault(c => c.CategoryName == cat);

            if (ca.CategoryName==cat)
            {
                lblSuccessMessage.Text = "";
                lblAlertMessage.Text = TxtCategoryName.Text + " Category is Already Exist!";
            }
            else
            {

            }
        }
        catch (Exception)
        {

            cate.CategoryName = TxtCategoryName.Text;
            cate.CategoryDescription = TxtCategoryDescription.Text;

            db.Categories.Add(cate);
            db.SaveChanges();
            lblAlertMessage.Text = "";
            lblSuccessMessage.Text = "Category Insert Successfully!";
            TxtCategoryName.Text = "";
            TxtCategoryDescription.Text = "";


        }

        

    }
}