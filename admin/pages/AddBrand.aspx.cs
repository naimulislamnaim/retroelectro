using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_AddBrand : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();

    bool checkBrand()
    {
        var data = db.Brands.Where(b=> b.BrandName==TextBoxBrandName.Text).FirstOrDefault();
        if (data!=null)
        {
            return true;
        }
        return false;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }



        if (!IsPostBack)
        {
            var sup = db.Suppliers.ToList();


            // [Distinct()] mean avoid duplicate entity
            DropDownList1.DataSource = db.Suppliers.ToList();
            DropDownList1.DataTextField = "SupplierName";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();
        }
    }

    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        Brand brnd = new Brand();
        
        brnd.BrandName = TextBoxBrandName.Text;
        brnd.BrandDescription = TextBoxdescription.Text;
        brnd.SupplierId = Int32.Parse(DropDownList1.SelectedValue);

        if (checkBrand())
        {
            LabelMessage.Text = "brand already exiest!";
            return;
        }

        if (fileBrandImage.HasFile)
        {
            LabelBrandImage.Text = fileBrandImage.FileName;

            brnd.BrandImage = LabelBrandImage.Text;


            fileBrandImage.SaveAs(Server.MapPath("./Images/" + LabelBrandImage.Text));
            ImageBrand.ImageUrl = "./Images/" + fileBrandImage.FileName;

        }

        db.Brands.Add(brnd);
        db.SaveChanges();

        LabelMessage.Text = "brand add success!";
    }

    protected void TextBoxBrandName_TextChanged(object sender, EventArgs e)
    {
        if (checkBrand())
        {
            LabelBrandExiest.Text = "brand already exiest!";
            return;
        }
        else
        {
            LabelBrandExiest.Text = "";
            
        }
    }
}