using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Printer.Admin
{
    public partial class UploadImages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/ProductImages/" + filename;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/productImages/" + filename);

        FileUploadImage.SaveAs(saveLocation);


        }
    }
}