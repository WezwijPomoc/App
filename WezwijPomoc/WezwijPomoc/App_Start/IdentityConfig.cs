﻿using System;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using WezwijPomoc.Models;
using SendGrid;
using SendGrid.Helpers.Mail;
using WezwijPomoc.Services;
namespace WezwijPomoc
{
    public class EmailService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            return Task.FromResult(0);
        }

        public  Task SendConfirmationEmail(ApplicationUser user, string token)
        {
            MessageService messageService = new MessageService();
            string html = messageService.CreateMessage(token, user.Id);
            
            var apiKey = "";
            var client = new SendGridClient(apiKey);
            var from = new EmailAddress("pomocWOT@ron.mil.pl", "Pomoc WOT");
            var subject = "Email aktywacyjny";
            var to = new EmailAddress(user.Email, user.UserName);
            var plainTextContent = "Pomoc WOT";
            var htmlContent = html;
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
            var response = client.SendEmailAsync(msg);
            return Task.FromResult(0);
        }
    }

    public class SmsService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Dołącz tutaj usługę wiadomości SMS, aby wysłać wiadomość SMS.
            return Task.FromResult(0);
        }
    }

    // Skonfiguruj menedżera użytkowników aplikacji używanego w tej aplikacji. Interfejs UserManager jest zdefiniowany w produkcie ASP.NET Identity i jest używany przez aplikację.
    public class ApplicationUserManager : UserManager<ApplicationUser>
    {
        public ApplicationUserManager(IUserStore<ApplicationUser> store)
            : base(store)
        {
        }

        public static ApplicationUserManager Create(IdentityFactoryOptions<ApplicationUserManager> options, IOwinContext context)
        {
            var manager = new ApplicationUserManager(new UserStore<ApplicationUser>(context.Get<ApplicationDbContext>()));
            // Konfiguruj logikę weryfikacji nazw użytkowników
            manager.UserValidator = new UserValidator<ApplicationUser>(manager)
            {
                AllowOnlyAlphanumericUserNames = false,
                RequireUniqueEmail = true
            };

            // Konfiguruj logikę weryfikacji haseł
            manager.PasswordValidator = new PasswordValidator
            {
                RequiredLength = 6,
                RequireNonLetterOrDigit = true,
                RequireDigit = true,
                RequireLowercase = true,
                RequireUppercase = true,
            };

            // Zarejestruj dostawców uwierzytelniania dwuetapowego. W przypadku tej aplikacji kod weryfikujący użytkownika jest uzyskiwany przez telefon i pocztą e-mail
            // Możesz zapisać własnego dostawcę i dołączyć go tutaj.
            manager.RegisterTwoFactorProvider("Kod — telefon", new PhoneNumberTokenProvider<ApplicationUser>
            {
                MessageFormat = "Twój kod zabezpieczający: {0}"
            });
            manager.RegisterTwoFactorProvider("Kod — e-mail", new EmailTokenProvider<ApplicationUser>
            {
                Subject = "Kod zabezpieczający",
                BodyFormat = "Twój kod zabezpieczający: {0}"
            });

            // Konfiguruj ustawienia domyślne blokady użytkownika
            manager.UserLockoutEnabledByDefault = true;
            manager.DefaultAccountLockoutTimeSpan = TimeSpan.FromMinutes(5);
            manager.MaxFailedAccessAttemptsBeforeLockout = 5;

            manager.EmailService = new EmailService();
            manager.SmsService = new SmsService();
            var dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                manager.UserTokenProvider = new DataProtectorTokenProvider<ApplicationUser>(dataProtectionProvider.Create("ASP.NET Identity"));
            }
            return manager;
        }
    }

    public class ApplicationSignInManager : SignInManager<ApplicationUser, string>
    {
        public ApplicationSignInManager(ApplicationUserManager userManager, IAuthenticationManager authenticationManager) :
            base(userManager, authenticationManager)
        { }

        public override Task<ClaimsIdentity> CreateUserIdentityAsync(ApplicationUser user)
        {
            return user.GenerateUserIdentityAsync((ApplicationUserManager)UserManager);
        }

        public static ApplicationSignInManager Create(IdentityFactoryOptions<ApplicationSignInManager> options, IOwinContext context)
        {
            return new ApplicationSignInManager(context.GetUserManager<ApplicationUserManager>(), context.Authentication);
        }
    }
}
