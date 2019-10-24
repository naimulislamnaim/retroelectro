using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Editor_pages_AddProduct : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null || Session["ur"].ToString() != "Editor")
        {
            Response.Redirect("login.aspx");
        }


    }

    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        Product pr = new Product();

        pr.ProductName = txtProductName.Text;
        pr.ProductDescription = txtDescription.Text;
        pr.Quantity = Int32.Parse(txtQuantity.Text);
        pr.Price = decimal.Parse(txtPrice.Text);
        pr.SKU = txtSKU.Text;
        pr.BrandImage = lblBrandImage.Text;
        pr.BrandName = dropBrandName.Text;
        pr.CategoryName = dropCategoryName.Text;
        pr.SupplierId = Int32.Parse(dropSupplierName.Text);
        pr.WarrentyType = dropWarrentyType.Text;



        if (fileProductImage.HasFiles)
        {
            //fileProductImage.SaveAs(Server.MapPath("./Images/" + fileProductImage.FileName));
            //imgProduct.ImageUrl = "./Images/" + fileProductImage.FileName;

            lblProductImage.Text = fileProductImage.FileName;
            pr.ProductImage = lblProductImage.Text;

            fileProductImage.SaveAs(Server.MapPath("../../admin/pages/Images/" + lblProductImage.Text));
            imgProduct.ImageUrl = "../../admin/pages/Images/" + fileProductImage.FileName;


        }


        db.Products.Add(pr);
        db.SaveChanges();
        lblSuccessMessage.Text = "Product Added Successfully!";
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