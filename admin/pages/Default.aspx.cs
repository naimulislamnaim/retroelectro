using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_Default : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //session allow form admin level users
        if (Session["un"] == null || Session["ur"].ToString()!="Admin")
        {
            Response.Redirect("login.aspx");
        }

        //count user number
        int countUser = db.Users.Count();
        LiteralTotalUser.Text = countUser.ToString();

        //count product number
        int countProduct = db.Products.Count();
        litralTotalProduct.Text = countProduct.ToString();

        //count order number
        int countOrder = db.Orders.Count();
        LiteralTotalOrder.Text = countOrder.ToString();

        //count brand number
        int countBrand = db.Brands.Count();
        LabelTotlBrand.Text = countBrand.ToString();

        //count supplier number
        int countSupplier = db.Suppliers.Count();
        LabelSupplier.Text = countSupplier.ToString();

        //count categories
        int countCategory = db.Categories.Count();
        LabelCategory.Text = countCategory.ToString();

        //count division number
        int countLocation = db.Divisions.Count();
        LabelLocation.Text = countLocation.ToString();

    }
}