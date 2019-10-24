using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_pages_AddNewBrand : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        //{
        //    Response.Redirect("login.aspx");
        //}

    }

    protected void brnAddBrand_Click(object sender, EventArgs e)
    {
        Brand brnd = new Brand();
        //try
        //{
            string brn = txtBrandName.Text.ToLower();
            //var br = db.Brands.Where(b => b.BrandName == brn).FirstOrDefault();
            //if (br!=null)
            //{
            //    lblSuccessMessage.Text = "";
            //    LabelBrandNameExiest.Text = txtBrandName.Text + " Brand is Already Exiest!";
                
            //}
            //else
            //{
                brnd.BrandName = txtBrandName.Text.ToLower();
                brnd.BrandDescription = txtBrandDescription.Text;
                brnd.SupplierId = Int32.Parse(dropSupplierName.Text);
                if (fileBrandImage.HasFile)
                {
                    //check file type (images)
                    //if (Path.GetExtension(fileBrandImage.PostedFile.FileName) != "jpg"
                    //    || Path.GetExtension(fileBrandImage.PostedFile.FileName) != "png")
                    //{
                    //    lblAlertMessage.Text = "Invalide image type! please try with valid one!";
                    //    return;
                    //}
                    lblBrandImage.Text = fileBrandImage.FileName;
                    brnd.BrandImage = fileBrandImage.FileName;

                    fileBrandImage.SaveAs(Server.MapPath("./Images/" + fileBrandImage.FileName));
                    imgBrand.ImageUrl = "./Images/" + fileBrandImage.FileName;


        }

        db.Brands.Add(brnd);
                db.SaveChanges();

                //txtBrandName.Text = "";
                //txtBrandDescription.Text = "";
                //dropSupplierName.Text = "";
                //lblBrandImage.Text = "";
                //lblAlertMessage.Text = "";
                lblSuccessMessage.Text = "Brand Insert Successfully!";
            //}
        //}
        //catch (Exception ex1)
        //{

        //    lblAlertMessage.Text = "" + ex1.Message;
        //}
    }

    protected void txtBrandName_TextChanged(object sender, EventArgs e)
    {
        ////existing email check (Customer Signup)
        //User ef = new User();
        //string brnd = txtBrandName.Text;
        //var dpt = db.Brands.Where(d => d.BrandName == brnd).FirstOrDefault();

        //try
        //{
        //    if (dpt!=null)
        //    {

        //        LabelBrandNameExiest.Text = txtBrandName.Text + " already exiest";

        //    }
        //    else
        //    {
        //        LabelBrandNameExiest.Text = "";
        //    }
        //}
        //catch (Exception ex1)
        //{

        //    LabelBrandNameExiest.Text = ""+ ex1.Message;
        //}

    }
}
