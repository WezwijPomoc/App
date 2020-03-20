using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WezwijPomoc.Services
{
    interface IValidationService
    {
        bool ValidateEmail(string email);
        bool ValidateUsername(string username);

        bool ValidatePhoneNumber(string number);

        bool ValidateSentence(string sentence);

        bool ValidateWords(string words);

        bool ValidatePriority(int priority);

        bool ValidateAddress(string address);

        bool ValidatePostCode(string postCode);
    }
}
