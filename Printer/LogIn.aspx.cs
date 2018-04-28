using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Printer
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtUserName.Text, TextBox1.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                Response.Redirect("~/Default.aspx");

            }
            else

            {
                errText.Text = "Try again";
            }
        }
      

    private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
    {
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        var userIdentity = userManager.CreateIdentity(
            user, DefaultAuthenticationTypes.ApplicationCookie);
        authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["ReturnUrl"] != null)
            {
                Response.Redirect(Request.QueryString["ReturnUrl"]);


            }
            else
            {
                String userRoles = userManager.GetRoles(user.Id).FirstOrDefault();

                if (userRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/AdminPanel.aspx");
                }
            }
            }

        protected void BtnLogin1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("RegisteredUser");
            roleManager.Create(adminRole);

            var user = new IdentityUser()
            {
                UserName = txtUserName.Text,
                Email = txtEmail.Text
            };

            IdentityResult result = manager.Create(user, txtPassword.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "RegisteredUser");
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