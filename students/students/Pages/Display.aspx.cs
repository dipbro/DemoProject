using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace students.Pages
{
    public partial class Display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string PhotoId = Context.Request.QueryString["PhotoId"];
            UserImage.ImageUrl = string.Format("~/ApplicationLogics/Utilities/ImageLoad.aspx?PhotoId={0}", PhotoId);
        }
    }
}