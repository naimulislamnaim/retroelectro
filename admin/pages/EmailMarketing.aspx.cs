using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_pages_EmailMarketing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null || Session["ur"].ToString() != "Admin")
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(txtTo.Text);
        mail.From = new System.Net.Mail.MailAddress("retroelectroinfo@gmail.com", "Admin", System.Text.Encoding.UTF8);//"diitidb@gmail.com", "Admin"
        mail.Subject = txtSubject.Text;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = txtBody.Text;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = System.Net.Mail.MailPriority.High;

        if (FileUpload1.HasFile)
        {
            string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            mail.Attachments.Add(new System.Net.Mail.Attachment(FileUpload1.PostedFile.InputStream, FileName));
        }

        System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("retroelectroinfo@gmail.com", "retroelectro112233"); //"diitidb@gmail.com", "round-27"
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;

        try
        {
            client.Send(mail);
            //ClientScript.RegisterStartupScript(GetType(), "alert", "alert: ('email sent successfully!')");
            LabelMessage.Text = "Message has been Sent!";
        }
        catch (Exception)
        {

            
        }
    }
}