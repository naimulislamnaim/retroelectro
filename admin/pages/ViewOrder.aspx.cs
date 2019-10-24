using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ViewOrder : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = DateTime.Now.ToString();

        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }

        string myo = Request.QueryString["x"];
        int id = Int32.Parse(myo);

        var data = db.Orders.Where(o => o.Id == id).FirstOrDefault();

        LabelOrderId.Text = data.Id.ToString();
        LabelOrderDate.Text = data.OrderDate.ToString();
        LabelCustomerFName.Text = data.User.FirstName;
        LabelCustomerLName.Text = data.User.LastName;
        LabelCustomerEmail.Text = data.User.Email;
        LabelCustomerPhone.Text = data.User.Phone;
        LabelCustomerAddress1.Text = data.User.AddressLine1;
        LabelCustomerAddress2.Text = data.User.AddressLine2;
        Label1.Text = data.GranTotal.ToString() + " BDT";
        var ddata = db.OrderDetails.Where(od => od.Order.Id == id).Select(y => new { y.Id, y.OrderId, y.Quantity, y.Price, y.Total, y.Product.ProductName}).ToList();

        GridView1.DataSource = ddata;
        GridView1.DataBind();

        
    }
}