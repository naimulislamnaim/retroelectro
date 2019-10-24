using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_pages_ViewProduct : System.Web.UI.Page
{

    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            LabelName.Text = Session["productId"].ToString();
            LabelName.Text = Session["productName"].ToString();
            LabelCategory.Text = Session["productCategory"].ToString();
            LabelSKU.Text = Session["productSKU"].ToString();
            LabelBrand.Text= Session["productBrand"].ToString();
            LabelPrice.Text= Session["productPrice"].ToString();
            LabelWarrentyType.Text= Session["productWarrenty"].ToString();
            LabelDescription.Text= Session["productDescription"].ToString();
            LabelQuantity.Text = Session["productQuantity"].ToString();

            ImageProduct.ImageUrl=  Session["image"].ToString();
            ImageBrand.ImageUrl = Session["imagebr"].ToString();
            //Literal1.Text =  Session["image"].ToString();

            if (!IsPostBack && Session["dt"] == null)
            {
                dt = new DataTable();

                DataColumn pid = new DataColumn("Product Id");
                DataColumn pSKU = new DataColumn("SKU");
                DataColumn pname = new DataColumn("Product Name");
                DataColumn sqty = new DataColumn("Product Quantity");
                DataColumn sprice = new DataColumn("Unit Price");
                DataColumn stprice = new DataColumn("Total Price");


                dt.Columns.Add(pid);
                dt.Columns.Add(pSKU);
                dt.Columns.Add(pname);
                dt.Columns.Add(sqty);
                dt.Columns.Add(sprice);
                dt.Columns.Add(stprice);


                //DataColumn dc = new DataColumn();
                Session["dt"] = dt;
                //GridView1.DataSource = dt;
                //GridView1.DataBind();
            }
            else
            {
                dt = (DataTable)Session["dt"];
            }


           
            


        }
        catch (Exception)
        {

            Response.Redirect("Product.aspx");
        }
        
    }

    protected void ButtonAddToCart_Click(object sender, EventArgs e)
    {
        int a= Int32.Parse(TextBoxPurchesQuantity.Text);
        int b = Int32.Parse(LabelQuantity.Text);


        if (a > b)
        {
            LabelQuantityMessage.Text = "not enough in stock";
            return;
        }

        else
        {
            //Session["productId"] = Label.Text;
            Session["productSKU"] = LabelSKU.Text;
            Session["productName"] = LabelName.Text;
            Session["productQuantity"] = TextBoxPurchesQuantity.Text;
            Session["productPrice"] = LabelPrice.Text;
            

            DataRow dr = dt.NewRow();

            dt.Rows.Add(dr);

            dr[0] = Session["productId"];
            dr[1] = Session["productSKU"];
            dr[2] = Session["productName"];
            dr[3] = Session["productQuantity"];
            dr[4] = Session["productPrice"];


            dr[5] = Convert.ToInt32(dr[3]) * Convert.ToDecimal(dr[4]);

            Session["dt"] = dt;

            Response.Redirect("MyCart.aspx");
        }
    }

    protected void ButtonAddToWishList_Click(object sender, EventArgs e)
    {

    }
}