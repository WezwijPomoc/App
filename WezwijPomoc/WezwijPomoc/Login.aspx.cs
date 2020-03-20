using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WezwijPomoc.Services;

namespace WezwijPomoc
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void potwierdzButton_Click(object sender, EventArgs e)
        {
            var manager = HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = await manager.FindByEmailAsync("maildospamu96@gmail.com");

            AccountService service = new AccountService();

            string token = await service.GenerateEmailConfirmationTokenAsync(user);
            
            string b64token = System.Convert.ToBase64String(Encoding.ASCII.GetBytes(token));
            EmailService emailService = new EmailService();

            await emailService.SendConfirmationEmail(user, b64token);
            Response.Redirect("~/indexFromMaster.aspx");
        }
    }
}