using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_UpdateProduct : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    int IdNumber;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["un"] == null || Session["ur"].ToString() != "Editor")
        {
            Response.Redirect("login.aspx");
        }
        IdNumber = Int32.Parse(Request.QueryString["x"].ToString());

        if (!IsPostBack)
        {
            var ProductData = db.Products.Where(d => d.Id == IdNumber).FirstOrDefault();
            txtProductName.Text =ProductData.ProductName;
            txtDescription.Text = ProductData.ProductDescription;
            txtQuantity.Text = ProductData.Quantity.ToString();
            txtPrice.Text = ProductData.Price.ToString();
            txtSKU.Text = ProductData.SKU;
            lblProductImage.Text = ProductData.ProductImage;
            lblBrandImage.Text = ProductData.BrandImage;

            imgProduct.ImageUrl = "../../admin/pages/Images/" + ProductData.ProductImage;
            imgBrand.ImageUrl = "../../admin/pages/Images/" + ProductData.BrandImage;
            //lblProductImage.Text = imgProduct.ImageUrl.ToString();
            ////fileProductImage.FileName. = imgProduct.ImageUrl.ToString();
        }
    }

    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        var ProductData = db.Products.Where(d => d.Id == IdNumber).FirstOrDefault();

        ProductData.ProductName = txtProductName.Text;
        ProductData.ProductDescription = txtDescription.Text;
        ProductData.Quantity = Int32.Parse(txtQuantity.Text);
        ProductData.Price = decimal.Parse(txtPrice.Text);
        ProductData.SKU = txtSKU.Text;
        ProductData.BrandImage = lblBrandImage.Text;

        if (fileProductImage.HasFiles)
        {
            //fileProductImage.SaveAs(Server.MapPath("./Images/" + fileProductImage.FileName));
            //imgProduct.ImageUrl = "./Images/" + fileProductImage.FileName;

            lblProductImage.Text = fileProductImage.FileName;
            ProductData.ProductImage = lblProductImage.Text;

            fileProductImage.SaveAs(Server.MapPath("../../admin/pages/Images/" + lblProductImage.Text));
            imgProduct.ImageUrl = "../../admin/pages/Images/" + fileProductImage.FileName;


        }
        


        db.SaveChanges();
        lblSuccessMessage.Text = "Product Update Successfully!";

    }


    protected void dropBrandName_SelectedIndexChanged(object sender, EventArgs e)
    {
        Brand br = new Brand();
        int x = Int32.Parse(dropBrandName.SelectedValue);
        var data = db.Brands.Where(d => d.Id == x).FirstOrDefault();

        imgBrand.ImageUrl = "../../admin/pages/Images/" + data.BrandImage;
        lblBrandImage.Text = data.BrandImage;
    }
}