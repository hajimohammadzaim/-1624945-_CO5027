using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
namespace Printer
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var user = new IdentityUser()
            {
                UserName = LoginTextBox.Text,
                Email = txtEmail.Text
            };

            IdentityResult result = manager.Create(user, PassTextBox.Text);
            if (result.Succeeded)
            {
                Literal1.Text = "Registration Successful";
            }
            else
            {
                Literal1.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }



    }
}
        }
    }
}