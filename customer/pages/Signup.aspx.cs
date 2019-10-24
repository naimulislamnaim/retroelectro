using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_pages_Sugnup : System.Web.UI.Page
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtRoleCustomer.Style.Add("display", "none");
        txtAccountCreateDate.Text= DateTime.Now.ToShortDateString();
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text != txtConfirmPassword.Text)
        {
            lblExistingMessage.Text = "";
            lblSuccessMessage.Text = "";
            lblPassNotMatch.Text = "password not match";
            return;
        }
        

        User usrs = new User();

        try
        {
            string usr = txtEmail.Text;
            User us = db.Users.ToList().SingleOrDefault(u => u.Email == usr);

            if (us.Email == usr)
            {
                //litEmailMessage.Text = txtEmail.Text + " Category is Already Exist!";
                lblPassNotMatch.Text = "";
                lblSuccessMessage.Text = "";
                lblExistingMessage.Text = "(" + txtEmail.Text + " Email is Already Exist!" + ")";
            }
        }
        catch (Exception)
        {
            usrs.Email = txtEmail.Text;
            usrs.FirstName = txtFirstName.Text;
            usrs.LastName = txtLastName.Text;
            usrs.Role = txtRoleCustomer.Text;
            usrs.Password = txtConfirmPassword.Text;
            usrs.AccountCreateDate = DateTime.Parse(txtAccountCreateDate.Text);

            if (checkGetConfirmEmail.Checked == true)
            {
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add(txtEmail.Text);
                mail.From = new System.Net.Mail.MailAddress("retroelectroinfo@gmail.com", "Admin", System.Text.Encoding.UTF8);//"diitidb@gmail.com", "Admin"
                mail.Subject = "RE customer account Confirmation!";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = "<b>" + "your user email is- " + "</b>" + txtEmail.Text + "<br>" + " your password is- " + txtPassword.Text;
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Priority = System.Net.Mail.MailPriority.High;

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

                    //litMessage.Text = ex.Message;
                }
                lblPassNotMatch.Text = "";
                lblExistingMessage.Text = "";
                lblSuccessMessage.Text = "Check your Email, account create successfully!";
                db.Users.Add(usrs);
                db.SaveChanges();
            }

            else
            {
                lblPassNotMatch.Text = "";
                lblExistingMessage.Text = "";
                lblSuccessMessage.Text = "Account create successfully!";
                db.Users.Add(usrs);
                db.SaveChanges();
            }

        }
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

                lblExistingMessage.Text = txtEmail.Text + " already exiest";
                
            }
        }
        catch (Exception)
        {

            lblExistingMessage.Text = "";
        }
           
    }
}