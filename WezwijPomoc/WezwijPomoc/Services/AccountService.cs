using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using WezwijPomoc.Models;
using Microsoft.AspNet.Identity.Owin;
using WezwijPomoc;

using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.DataProtection;

using Owin;

namespace WezwijPomoc.Services
{
    public class AccountService
    {
         private  UserManager<ApplicationUser> _userManager;
        // private readonly UserStore<ApplicationUser> _userStore;
         
        public ApplicationUser CurrentUser { get; }



        public async Task<bool> SignInAsync(string name, string password, IAuthenticationManager authentication)
        {
            
            var user = await _userManager.FindAsync(name, password);
            user.EmailConfirmed = true;
            
            if (user == null) return false;
            if (!user.EmailConfirmed) return false;

            
            var userIdentity = _userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            authentication.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
            return true;
        }

        public async Task<string> GenerateEmailConfirmationTokenAsync(ApplicationUser user)
        {
            if (user == null) throw new ArgumentNullException();
            if (user.EmailConfirmed) throw new InvalidOperationException("Użytkownik już potwierdził adres email!");

            return await _userManager.GenerateEmailConfirmationTokenAsync(user.Id);
        }

        public async Task<bool> ConfirmEmail(ApplicationUser user, string token)
        {
            if (user == null) throw new ArgumentNullException();
            if (user.EmailConfirmed) throw new InvalidOperationException("Użytkownik już potwierdził adres email!");

            var result = await _userManager.ConfirmEmailAsync(user.Id, token);

            return result.Succeeded;
        }


        public async Task<bool> SignOutAsync()
        {
            return true;
        }


        public AccountService()
        {
            var context = HttpContext.Current.GetOwinContext();
           _userManager = context.GetUserManager<ApplicationUserManager>();
           // _userStore= HttpContext.Current.GetOwinContext().
        }
    }
}