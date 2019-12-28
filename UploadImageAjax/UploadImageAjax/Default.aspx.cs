using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace UploadImageAjax
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Upload(object sender, EventArgs e)
        {
            //Get the name of the File.
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

            //Get the content type of the File.
            string contentType = FileUpload1.PostedFile.ContentType;

            //Read the file data into Byte Array.
            BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream);
            byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);

            //Call the Web Service and pass the File data for upload.
            ServiceReference.UploadService service = new ServiceReference.UploadService();
            service.UploadFile(fileName, contentType, bytes);
        }
    }
}