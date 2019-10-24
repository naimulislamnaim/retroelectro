using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_pages_Product : System.Web.UI.Page
{
    //DataList dl;
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var prod = db.Products.ToList();

            DataList1.DataSource = prod;
            DataList1.DataBind();

            // [Distinct()] mean avoid duplicate entity
            DropDownList1.DataSource = db.Categories.Select(d => d.CategoryName).Distinct().ToList();
            DropDownList1.DataBind();
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //dl = new DataList();

        
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "bbb")
        {
            //declear selector and get product id in session veriable
            string pId = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("IdLabel")).Text;
            Session["productId"] = pId;

            //declear selector and get product name in session veriable
            string pName = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("NameLabel")).Text;
            Session["productName"] = pName;

            string pCategory = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("CatLabel")).Text;
            Session["productCategory"] = pCategory;

            string pSKU = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("SKULabel")).Text;
            Session["productSKU"] = pSKU;

            string pBrand = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("BrLabel")).Text;
            Session["productBrand"] = pBrand;

            string pPrice = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("PriceLabel")).Text;
            Session["productPrice"] = pPrice;

            string pWarrenty = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("WarLabel")).Text;
            Session["productWarrenty"] = pWarrenty;

            string pDescription = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("DesLabel")).Text;
            Session["productDescription"] = pDescription;

            string pQuantity = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("QuantityLabel")).Text;
            Session["productQuantity"] = pQuantity;

            var img = ((Image)DataList1.Items[e.Item.ItemIndex].FindControl("imgProduct")).ImageUrl;
            Session["image"]=img;

            var img2 = ((Image)DataList1.Items[e.Item.ItemIndex].FindControl("BrandImage")).ImageUrl;
            Session["imagebr"] = img2;

            Response.Redirect("ViewProduct.aspx");
            
        }
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var cate = db.Products.Where(d => d.CategoryName == DropDownList1.SelectedValue).ToList();

        DataList1.DataSource = cate;
        DataList1.DataBind();
    }

    protected void ButtonSearchProduct_Click(object sender, EventArgs e)
    {
        var cate = db.Products.Where(d => d.SKU == TextBoxSkuSearch.Text || d.BrandName==TextBoxSkuSearch.Text).ToList();

        DataList1.DataSource = cate;
        DataList1.DataBind();
    }

    protected void TextBoxSkuSearch_TextChanged(object sender, EventArgs e)
    {
        var cate = db.Products.Where(d => d.SKU == TextBoxSkuSearch.Text || d.BrandName==TextBoxSkuSearch.Text).ToList();

        DataList1.DataSource = cate;
        DataList1.DataBind();
    }
}