﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Printer.Admin
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Add.aspx");
        }

      

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/List.aspx");
        }

       
        

        protected void Button6_Click(object sender, EventArgs e)
        {
            
        }
    }
}