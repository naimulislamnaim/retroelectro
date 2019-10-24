using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class admin_pages_AddNewUser : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["un"] == null)
        //{
        //    Response.Redirect("login.aspx");
        //}
        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }
        txtAccountCreateDate.Text = DateTime.Now.ToShortDateString();
    }

    protected void btnAddUser_Click(object sender, EventArgs e)
    {
        User usrs = new User();


        try
        {
            string usr = txtEmail.Text;
            User us = db.Users.ToList().SingleOrDefault(u => u.Email == usr);

            if (us.Email== usr)
            {
                //litEmailMessage.Text = txtEmail.Text + " Category is Already Exist!";
                lblSuccessMessage.Text = "";
                lblAlertMessage.Text = "(" + txtEmail.Text + " Email is Already Exist!" + ")";
            }
        }
        catch (Exception)
        {
            usrs.Email = txtEmail.Text;
            usrs.FirstName = txtFirstName.Text;
            usrs.LastName = txtLastName.Text;
            usrs.Role = DropDownListRole.Text;
            usrs.Password = txtPassword.Text;
            usrs.AccountCreateDate = DateTime.Parse(txtAccountCreateDate.Text);

            if (checkBoxEmail.Checked == true)
            {
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add(txtEmail.Text);
                mail.From = new System.Net.Mail.MailAddress("retroelectroinfo@gmail.com", "Admin", System.Text.Encoding.UTF8);//"diitidb@gmail.com", "Admin"
                mail.Subject = "Your account info";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = "<b>" + "your user email is- " + "</b>" + txtEmail.Text + "<br>" + " your password is- " + txtPassword.Text;
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Priority = System.Net.Mail.MailPriority.High;

                //if (FileUpload1.HasFile)
                //{
                //    string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                //    mail.Attachments.Add(new System.Net.Mail.Attachment(FileUpload1.PostedFile.InputStream, FileName));
                //}

                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
                client.Credentials = new System.Net.NetworkCredential("retroelectroinfo@gmail.com", "retroelectro112233"); //"diitidb@gmail.com", "round-27"
                client.Port = 587;
                client.Host = "smtp.gmail.com";
                client.EnableSsl = true;

                try
                {
                    client.Send(mail);
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert: ('email sent successfully!')");
                }
                catch (Exception ex)
                {

                    litMessage.Text = ex.Message;
                }

                lblSuccessMessage.Text = "Email sent to user, account create successfully!";
                db.Users.Add(usrs);
                db.SaveChanges();
            }

            else
            {
                lblSuccessMessage.Text = "Account create successfully!";
                db.Users.Add(usrs);
                db.SaveChanges();
            }

        }
        
    }

    //generate randome password
    protected void btnRandomPass_Click(object sender, EventArgs e)
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

    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {
        //existing email check (Customer Signup)
        User ef = new User();
        string eml = txtEmail.Text;
        User dpt = db.Users.ToList().SingleOrDefault(d => d.Email == eml);

        try
        {
            if (dpt.Email == eml)
            {

                lblAlertMessage.Text = txtEmail.Text + " already exiest";

            }
        }
        catch (Exception)
        {

            lblAlertMessage.Text = "";
        }
    }
}