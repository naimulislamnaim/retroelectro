using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_pages_MyCart : System.Web.UI.Page
{
    DataTable dt;
    myDatabaseEntities1 db = new myDatabaseEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["un"]!=null)
        {
            ButtonCheckOut.Visible = true;
        }
        else
        {
            BtnLoginToCheckout.Visible = true;
        }
        //LabelCusyomerEmail.Text = Session["umail"].ToString();
        string x = (String)(Session["un"]);
        var usr = db.Users.Where(u => u.Email == x).FirstOrDefault();

        

        dt = (DataTable)Session["dt"];
            GridView1.ShowHeaderWhenEmpty = true;
            GridView1.DataSource = dt;
            GridView1.DataBind();

            LabelGtotal.Text = grandTotal().ToString();

            
        try
        {
            Session["dtCount"] = dt.Rows.Count.ToString();
        }
        catch (Exception)
        {

            
        }

        //lblGtotal.Text = grandTotal().ToString();
    }

   

    protected void ButtonCheckOut_Click(object sender, EventArgs e)
    {
        if (LabelGtotal.Text=="0")
        {
            LabelOrderSuccess.Text = "<p style='color:blue; font-size: 20px;'>" + "no item to order!" + "</p>";
            return;
        }
        else
        {
            Order ord = new Order();

            ord.OrderDate = DateTime.Now.Date;
            ord.GranTotal = decimal.Parse(LabelGtotal.Text);
            ord.CustomerId = Int32.Parse(Session["uid"].ToString());
            ord.DeliveryStatus = "Pending";

            db.Orders.Add(ord);
            db.SaveChanges();

            OrderDetail ordetails = new OrderDetail();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ordetails.OrderId = ord.Id;
                ordetails.ProductId = Int32.Parse(dt.Rows[i][0].ToString());
                ordetails.Quantity = Int32.Parse(dt.Rows[i][3].ToString());
                ordetails.Price = decimal.Parse(dt.Rows[i][4].ToString());

                ordetails.Total = decimal.Parse(dt.Rows[i][5].ToString());



                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add("naimpabna@gmail.com");
                mail.From = new System.Net.Mail.MailAddress("retroelectroinfo@gmail.com", "Admin", System.Text.Encoding.UTF8);//"diitidb@gmail.com", "Admin"
                mail.Subject = "New order!";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = "<p style='color:red; font-size: 50px;'>" + "New order has arrive!" + "</p>";
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

                    LabelCustomerEmail.Text = ex.Message;
                }
                System.Threading.Thread.Sleep(3000);

                LabelOrderSuccess.Text = "<p style='color:green; font-size: 50px;'>"+"your order has process successfully! please check your RE account!"+"</p>";

                db.OrderDetails.Add(ordetails);
                db.SaveChanges();

                
            }

            Session["dt"] = null;
            dt = (DataTable)Session["dt"];

            //Label lbl_UserName = this.Master.FindControl("LabelCart") as Label;
            //lbl_UserName.Text = Session["dt"].ToString();

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        

    }


    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        dt.Rows.RemoveAt(e.RowIndex);
        GridView1.DataBind();
        LabelGtotal.Text = grandTotal().ToString();
    }

    public decimal grandTotal()
    {
        decimal gtotal = 0;
        foreach (GridViewRow r in GridView1.Rows)
        {
            gtotal += Decimal.Parse(r.Cells[6].Text);
        }
        return gtotal;
    }



    protected void BtnLoginToCheckout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
