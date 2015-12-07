using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using students.DatabaseLayer;

namespace students.Pages
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string name = Name.Text;
            string address = Address.Text;

              byte[] imageSize = new byte[ImageFileUpload.PostedFile.ContentLength];
            HttpPostedFile uploadedImage = ImageFileUpload.PostedFile;
            uploadedImage.InputStream.Read(imageSize, 0, (int)ImageFileUpload.PostedFile.ContentLength);
            string msg;
            msg = DatabaseLayer.students.Insert(name, address, imageSize);
            Message.Text = msg;
        }

    }
}