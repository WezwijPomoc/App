using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity.Owin;
using WezwijPomoc.Models;
using WezwijPomoc.Services;

namespace WezwijPomoc
{
	public partial class LogowanieInstytucja : System.Web.UI.Page
	{
		protected  void Page_Load(object sender, EventArgs e)
		{
            
		}

        protected async void potwierdzButton_Click(object sender, EventArgs e)
        {
            var manager = HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = await manager.FindByEmailAsync("maildospamu96@gmail.com");

            AccountService service = new AccountService();

            string token = await service.GenerateEmailConfirmationTokenAsync(user);

            EmailService emailService = new EmailService();

            await emailService.SendConfirmationEmail(user, token);
            Response.Redirect("~/indexFromMaster.aspx");
        }
    }
}