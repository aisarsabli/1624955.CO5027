using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace _1624955_WebDevelopment.HomePage
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtUsername.Text, txtPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);  //todo: log user in / instruct user to log in
                txtliteral.Text = "Request Success.";
            }
            else
            {
                txtliteral.Text = "Invalid username or password.";
            }
        }       

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            
            // create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            // create user store and user manager
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var rolemanager = new RoleManager<IdentityRole>(roleStore);
            // create user
            var user = new IdentityUser() { UserName = txtRUsername.Text, Email = txtEmail.Text };
            IdentityResult result = manager.Create(user, txtRPassword.Text);
            if (result.Succeeded)
            {
                //todo: Either authenticate the user (log them in) or redirect them to the 1 origin page to log in for themselves
                txtliteral2.Text = "Register Success !";
            }
            else
            {
                txtliteral2.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
            IdentityRole adminRole = new IdentityRole("user");
            rolemanager.Create(adminRole);
            manager.AddToRole(user.Id, "user");
            manager.Update(user);

        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
            //Note: user is automatically redirected if trying to access another page
        }
    }
}