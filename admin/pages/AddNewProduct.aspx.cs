using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_AddNewProduct : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        Product prod = new Product();

        try
        {
            string pro = txtProductName.Text;
            Product pr = db.Products.ToList().SingleOrDefault(p => p.ProductName == pro);
            if (pr.ProductName == pro)
            {
                lblSuccessMessage.Text = "";
                lblAlertMessage.Text = txtProductName.Text + " Product is Already Exiest!";

            }
            else
            {

            }
        }
        catch (Exception)
        {

            prod.ProductName = txtProductName.Text;
            prod.SKU = txtSKU.Text;
            prod.ProductDescription = txtDescription.Text;
            prod.SupplierId = Int32.Parse(dropSupplierName.Text);
            prod.CategoryName = dropCategoryName.Text;
            prod.Quantity = Int32.Parse(txtQuantity.Text);
            prod.Price = decimal.Parse(txtPrice.Text);
            prod.BrandName = dropBrandName.Text;
            prod.WarrentyType = dropWarrentyType.Text;
            prod.BrandImage = lblBrandImage.Text;

            //if (fileProductImage.HasFile)
            //{
            //    // file validation check
            //    //if (Path.GetExtension(fileProductImage.PostedFile.FileName) !="jpg" 
            //    //    || Path.GetExtension(fileProductImage.PostedFile.FileName) != "png")
            //    //{
            //    //    lblAlertMessage.Text = "Invalide image type! please try with valid one!";
            //    //    return;
            //    //}

            //    //lblProductImage.Text = fileProductImage.FileName;
            //    //prod.ProductImage = lblProductImage.Text;

            //    //fileProductImage.SaveAs(Server.MapPath("./Images/" + lblProductImage.Text));
            //    //imgProduct.ImageUrl = "./Images/" + fileProductImage.FileName;

                

            //}

            if (fileProductImage.HasFiles)
            {
                //fileProductImage.SaveAs(Server.MapPath("./Images/" + fileProductImage.FileName));
                //imgProduct.ImageUrl = "./Images/" + fileProductImage.FileName;

                lblProductImage.Text = fileProductImage.FileName;
                prod.ProductImage = lblProductImage.Text;

                fileProductImage.SaveAs(Server.MapPath("./Images/" + lblProductImage.Text));
                imgProduct.ImageUrl = "./Images/" + fileProductImage.FileName;


            }

            //if (FileBrandImage.HasFile)
            //{
            //    lblBrandImage.Text = FileBrandImage.FileName;
            //    prod.BrandImage = lblBrandImage.Text;

            //    FileBrandImage.SaveAs(Server.MapPath("./Images/" + lblBrandImage.Text));
            //    imgBrand.ImageUrl = "./Images/" + FileBrandImage.FileName;


            //}


            db.Products.Add(prod);
            db.SaveChanges();

            txtProductName.Text = "";
            txtDescription.Text = "";
            txtQuantity.Text = "";
            txtPrice.Text = "";
            txtSKU.Text = "";

            lblAlertMessage.Text = "";
            lblSuccessMessage.Text = "Product Insert Successfully!";
        }
    }

    protected void dropBrandName_SelectedIndexChanged(object sender, EventArgs e)
    {
        Brand br = new Brand();
        int x = Int32.Parse(dropBrandName.SelectedValue);
        var data = db.Brands.Where(d => d.Id == x).FirstOrDefault();

        imgBrand.ImageUrl = "./images/" + data.BrandImage;
        lblBrandImage.Text = data.BrandImage;
    }
}