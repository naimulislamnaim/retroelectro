using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_UpdateUser : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    int IdNumber;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }
        IdNumber = Int32.Parse(Request.QueryString["x"].ToString());

        if (!IsPostBack)
        {
            var UserData = db.Users.Where(u => u.Id == IdNumber).FirstOrDefault();
            
            txtEmail.Text = UserData.Email;
            txtFirstName.Text = UserData.FirstName;
            txtLastName.Text = UserData.LastName;
            txtPassword.Text = UserData.Password;
            txtRole.Text = UserData.Role;
            txtAccountCreateDate.Text = UserData.AccountCreateDate.ToString();
            txtAddressLine1.Text = UserData.AddressLine1;
            txtAddressLine2.Text = UserData.AddressLine2;
            txtPostCode.Text = UserData.PostCode;
            txtPhone.Text = UserData.Phone;
            //dropDivisionList.Text = UserData.Division.ToString();
            litDivisionName.Text = UserData.DivisionId.ToString();



        }
    }

    protected void btnUpdateUser_Click(object sender, EventArgs e)
    {
        var UserData = db.Users.Where(u => u.Id == IdNumber).FirstOrDefault();

        UserData.Email = txtEmail.Text;
        UserData.FirstName = txtFirstName.Text;
        UserData.LastName = txtLastName.Text;
        UserData.Password = txtPassword.Text;
        UserData.Role = txtRole.Text;
        //UserData.AccountCreateDate = DateTime.Parse(txtAccountCreateDate.Text);
        UserData.AddressLine1 = txtAddressLine1.Text;
        UserData.AddressLine2 = txtAddressLine2.Text;
        UserData.PostCode = txtPostCode.Text;
        UserData.Phone = txtPhone.Text;
        UserData.DivisionId = Int32.Parse(dropDivisionList.Text);

        db.SaveChanges();
        litMessage.Text = "User update successfully! " + DateTime.Now.ToString();

    }

    protected void btnPasswordGen_Click(object sender, EventArgs e)
    {
        string num = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%";
        int len = num.Length;
        string otp = string.Empty;

        int otpdigit = 20;
        string finaldigit;
        int getindex;

        for (int i = 0; i < otpdigit; i++)
        {
            do
            {
                getindex = new Random().Next(0, len);
                finaldigit = num.ToCharArray()[getindex].ToString();

            } while (otp.IndexOf(finaldigit) != -1);
            otp += finaldigit;
        }
        txtPassword.Text = otp;
    }

}