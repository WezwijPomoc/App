using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WezwijPomoc.Services;

namespace WezwijPomoc
{
	public partial class LogowanieInstytucja : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected async void potwierdzButton_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                AccountService accountService = new AccountService();

                bool result= await accountService.SignIn(this.loginTextBox.Text, this.hasloTextBox.Text, HttpContext.Current.GetOwinContext().Authentication);
                if(!result)
                {
                    var val = new CustomValidator();
                    val.IsValid = false;
                    val.ErrorMessage = "Niepoprawna nazwa użytkownika lub hasło";
                    Validators.Add(val);
                }
            }
            else
            {
                var user = HttpContext.Current.User.Identity.IsAuthenticated;
            }
           
        }
    }
}