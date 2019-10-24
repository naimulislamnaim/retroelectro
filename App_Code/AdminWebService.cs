using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;

/// <summary>
/// Summary description for AdminWebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class AdminWebService : System.Web.Services.WebService
{
    myDatabaseEntities1 db = new myDatabaseEntities1();

    public AdminWebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public void ShowAllCategory()
    {
        var data = db.Categories.ToList();

        var js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(data));
    }

    [WebMethod]
    public void ShowAllDivision()
    {
        var data = db.Divisions.ToList();

        var js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(data));
    }

    [WebMethod]
    public void ShowAllUser()
    {
        var data = db.Users.ToList();

        var js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(data));
    }

}
