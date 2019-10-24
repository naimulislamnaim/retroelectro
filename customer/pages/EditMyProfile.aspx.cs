using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_pages_EditMyProfile : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["un"] == null || Session["ur"].ToString() != "Customer")
        {
            Response.Redirect("login.aspx");
        }

        if (!IsPostBack)
        {

            var data = db.Divisions.ToList();

            DropDownListDivision.DataSource = data;
            DropDownListDivision.DataTextField = "DivisionName";
            DropDownListDivision.DataValueField = "Id";
            DropDownListDivision.DataBind();

            try
            {

                string x = (String)(Session["un"]);
                var usr = db.Users.Where(u => u.Email == x).FirstOrDefault();

                if (usr != null)
                {
                    txtEmail.Text = usr.Email;
                    txtFirstName.Text = usr.FirstName;
                    txtLastName.Text = usr.LastName;
                    txtPassword.Text = usr.Password;
                    txtRole.Text = usr.Role;
                    txtAccountCreateDate.Text = usr.AccountCreateDate.ToString();
                    txtAddressLine1.Text = usr.AddressLine1;
                    txtAddressLine2.Text = usr.AddressLine2;
                    txtPostCode.Text = usr.PostCode;
                    txtPhone.Text = usr.Phone;
                    //txtDivision.Text = usr.DivisionId.ToString();
                    DropDownListDivision.SelectedValue = usr.DivisionId.ToString();

                }
                else
                {
                    txtEmail.Text = "";
                    txtFirstName.Text = "";
                    txtLastName.Text = "";
                    txtPassword.Text = "";
                    txtRole.Text = "";
                    txtAccountCreateDate.Text = "";
                    txtAddressLine1.Text = "";
                    txtAddressLine2.Text = "";
                    txtPostCode.Text = "";
                    txtPhone.Text = "";
                }
            }
            catch (Exception)
            {

                //litMessage.Text = "please insert an Email";
            }
        }
    }

    protected void BtnPasswordGen_Click(object sender, EventArgs e)
    {
        string charSet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%";
        int len = charSet.Length;
        string rand = string.Empty;

        int randLen = 20;
        string finalDigit;
        int getIndex;
        for (int i = 0; i < randLen; i++)
        {
            do
            {
                getIndex = new Random().Next(0, len);
                finalDigit = charSet.ToCharArray()[getIndex].ToString();
            } while (rand.IndexOf(finalDigit) != -1);
            rand += finalDigit;
        }
        txtPassword.Text = rand;
    }

    protected void btnUpdateUserAdmin_Click(object sender, EventArgs e)
    {
        
        try
        {
            string x = (String)(Session["un"]);
            var usr = db.Users.Where(d => d.Email == x).FirstOrDefault();

            if (usr != null)
            {

                usr.Email = txtEmail.Text;
                usr.FirstName = txtFirstName.Text;
                usr.LastName = txtLastName.Text;
                usr.Password = txtPassword.Text;
                usr.Role = txtRole.Text;
                usr.AccountCreateDate = DateTime.Parse(txtAccountCreateDate.Text);
                usr.AddressLine1 = txtAddressLine1.Text;
                usr.AddressLine2 = txtAddressLine2.Text;
                usr.PostCode = txtPostCode.Text;
                usr.Phone = txtPhone.Text;
                usr.DivisionId = Int32.Parse(DropDownListDivision.Text);

                db.SaveChanges();
                litMessage.Text = "data update successfully!";
            }
            else
            {

                litMessage.Text = "<span style='color:red'>data can not update!!! </span>";
            }
        }
        catch (Exception)
        {

            litMessage.Text = "something went wrong!";
        }
    }
}