using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_pages_ViewMyOrders : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["un"] == null || Session["ur"].ToString() != "Customer")
        {
            Response.Redirect("login.aspx");
        }

        string myo = Request.QueryString["x"];
        int id = Int32.Parse(myo);

        var data = db.Orders.Where(o => o.Id == id).FirstOrDefault();

        LabelOrderId.Text = data.Id.ToString();
        LabelDate.Text = data.OrderDate.ToString();

        //var ddata = db.OrderDetails.Where(od => od.Id == id).Select(y=> new { y.Id, y.OrderId, y.Quantity,y.Price, y.Total,y.Product.ProductName }).ToList();
        var ddata = db.OrderDetails.Where(od => od.Order.Id == id).Select(y => new { y.Id, y.OrderId, y.Quantity, y.Price, y.Total, y.Product.ProductName }).ToList();

        GridView1.DataSource = ddata;
        GridView1.DataBind();

    }
}