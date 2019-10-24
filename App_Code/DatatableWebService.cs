using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
/// <summary>
/// Summary description for DatatableWebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class DatatableWebService : System.Web.Services.WebService
{
    myDatabaseEntities1 db = new myDatabaseEntities1();
    public DatatableWebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }


    //all users
    [WebMethod]
    public void ShowAllUsers()
    {
        
        var data = db.Users.Select(u=> new {u.Id, u.FirstName, u.LastName, u.Phone, u.Email, u.Role, u.AddressLine1, u.AddressLine2, u.PostCode, u.Division.DivisionName}).ToList();

        var js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(data));
    }

    [WebMethod]
    public void ShowAllOrders()
    {
        var data = db.CustomerOrders.Select(u=> new { u.Id, u.FirstName,u.LastName, u.Email, u.GranTotal, u.OrderDate}).ToList();

        var js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(data));
    }

    //[WebMethod]
    //public void ShowAllOrdersDetails()
    //{
    //    var data = db.OrderDetails.Select(u => new { u.Id, u.OrderId, u.Product, u.Quantity, u.Order.User.Email }).ToList();

    //    var js = new JavaScriptSerializer();
    //    Context.Response.Write(js.Serialize(data));
    //}

    [WebMethod]
    public void CustomerOrder()
    {
        var data = db.CustomerOrders.Select(u => new { u.FirstName, u.LastName, u.OrderDate, u.Email,u.GranTotal }).ToList();

        var js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(data));
    }

    [WebMethod]
    public void ProductOrderQuantity()
    {
        var data = db.OrderDetails.Select(u => new { u.Product.ProductName, u.Quantity, u.Product.CategoryName }).ToList();

        var js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(data));
    }

    [WebMethod]
    public void ProductOrderStatus()
    {
        var data = db.Orders.Select(u => new { u.User.Email, u.DeliveryStatus, u.OrderDate }).ToList();

        var js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(data));
    }

}
