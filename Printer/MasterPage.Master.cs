using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Printer
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void CSS_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://jigsaw.w3.org/css-validator/");
        }

        protected void WCAG_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://achecker.ca/checker/");
        }
        protected void HTML_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://validator.w3.org/");
        }
    }
}