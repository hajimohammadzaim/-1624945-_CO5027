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

        protected void BtnLogin(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("Admin");
            roleManager.Create(adminRole);

            var user = new IdentityUser()
            {
                UserName = txtUserName.Text,
                Email = txtEmail.Text
            };

            IdentityResult result = manager.Create(user, txtPassword.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "Admin");
                manager.Update(user);
                Literal1.Text = "Registration Successful";
            }
            else
            {
                Literal1.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}