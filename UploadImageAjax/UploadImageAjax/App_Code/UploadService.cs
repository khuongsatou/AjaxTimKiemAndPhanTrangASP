using System;
using System.Web;
using System.Web.Services;
using System.IO;

/// <summary>
/// Summary description for WebServiceCS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class UploadService : System.Web.Services.WebService {

    public UploadService()
    {
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void UploadFile(string fileName, string contentType, byte[] bytes)
    {
        //Save the Byte Array as File.
        string filePath = Server.MapPath(string.Format("~/Uploads/{0}", fileName));
        File.WriteAllBytes(filePath, bytes);
    }
}
