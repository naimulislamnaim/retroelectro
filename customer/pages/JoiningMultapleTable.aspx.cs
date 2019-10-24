using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_pages_JoiningMultapleTable : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //declear selector to join multaple table
        GridView1.DataSource = db.Products.Select(p=> new { p.Id, p.ProductName,p.BrandName,p.Price,p.Supplier.SupplierName }).ToList();
        GridView1.DataBind();
    }
}