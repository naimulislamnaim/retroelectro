using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_Orders : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }


        if (!IsPostBack)
        {
            GridView1.DataSource = db.Orders.Select(od => new { od.Id, od.OrderDate, od.GranTotal, od.DeliveryStatus, od.CustomerId }).ToList();
            GridView1.DataBind(); 
        }
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.DataSource = db.Orders.Select(od => new { od.Id, od.OrderDate, od.GranTotal, od.DeliveryStatus, od.CustomerId }).ToList();
        GridView1.DataBind();

        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;

        GridView1.DataSource = db.Orders.Select(od => new { od.Id, od.OrderDate, od.GranTotal, od.DeliveryStatus, od.CustomerId }).ToList();
        GridView1.DataBind();

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int x = Int32.Parse(((TextBox)(row.Cells[3].Controls[0])).Text);
        var data = db.Orders.Where(o => o.Id == x).FirstOrDefault();

        //Update the values.
        
       data.DeliveryStatus = ((DropDownList)(row.Cells[2].FindControl("DropdownList1"))).Text;
        data.OrderDate =DateTime.Parse( ((TextBox)(row.Cells[4].Controls[0])).Text);
        data.GranTotal =decimal.Parse(((TextBox)(row.Cells[5].Controls[0])).Text);

        db.SaveChanges();
        //Reset the edit index.
        GridView1.EditIndex = -1;

        GridView1.DataSource = db.Orders.Select(od => new { od.Id, od.OrderDate, od.GranTotal, od.DeliveryStatus, od.CustomerId }).ToList();
        GridView1.DataBind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;

        GridView1.DataSource = db.Orders.Select(od => new { od.Id, od.OrderDate, od.GranTotal, od.DeliveryStatus, od.CustomerId }).ToList();
        GridView1.DataBind();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text!="")
        {
            int x = Int32.Parse(TextBox1.Text);
            var cate = db.Orders.Where(d => d.Id == x).ToList();

            GridView1.DataSource = cate;
            GridView1.DataBind();
        }
        else
        {
            return;
        }
    }
        


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        var cate = db.Orders.Where(d => d.DeliveryStatus == DropDownList2.Text).ToList();

        GridView1.DataSource = cate;
        GridView1.DataBind();
    }
}