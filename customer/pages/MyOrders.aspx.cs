using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_pages_MyOrders : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //GridView1.DataSource = db.OrderDetails.Select(o => new { o.Id, o.ProductId, o.Price, o.Order.OrderDetails }).ToList();
        //GridView1.DataBind();

        if (Session["uid"] != null)
        {


            int x = Int32.Parse(Session["uid"].ToString());
            GridView1.DataSource = db.Orders.Select(od => new { od.Id, od.OrderDate, od.GranTotal, od.DeliveryStatus, od.CustomerId }).Where(uo => uo.CustomerId == x).ToList();
            GridView1.DataBind();
        }

        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}