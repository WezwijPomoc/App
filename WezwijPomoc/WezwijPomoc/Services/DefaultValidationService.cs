using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace WezwijPomoc.Services
{
    public class DefaultValidationService : IValidationService
    {
        String patternUsername = @"^[a-zA-Z0-9]+$";
        String patternSentence = @"^[a-zA-Z0-9,.!? ]*$";
        String patternWords = @"^[a-zA-Z]+$";
        String patternNumber = @"^\+48\d{9}"; 
        String patternPriority = @"^[1-3]{1}$";
        String patternPostCode = @"^\d{2}\-\d{3}";
        String patternAddress = @"[A-Za-z0-9'\.\-\s\,]";
        String patternEmail = @"^(([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@" + @"((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\."
           + @"([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|" + @"([a-zA-Z0-9]+[\w-]+\.)+[a-zA-Z]{1}[a-zA-Z0-9-]{1,23})$";

        public bool ValidateAddress(string address)
        {
            if (!Regex.IsMatch(address, patternAddress)) return false;
            return true;
        }

        public bool ValidateEmail(string email)
        {
            if (!Regex.IsMatch(email, patternEmail)) return false;
            return true;
        }

        public bool ValidatePhoneNumber(string number)
        {
            if (!Regex.IsMatch(number, patternNumber)) return false;
            return true;
        }

        public bool ValidatePostCode(string postCode)
        {
            if (!Regex.IsMatch(postCode, patternPostCode)) return false;
            return true;
        }

        public bool ValidatePriority(int priority)
        {
            if (!Regex.IsMatch(priority.ToString(), patternPriority)) return false;
            return true;
        }

        public bool ValidateSentence(string sentence)
        {
            if (!Regex.IsMatch(sentence, patternSentence)) return false;
            return true;
        }

        public bool ValidateUsername(string username)
        {
            if (!Regex.IsMatch(username, patternUsername)) return false;
            return true;
        }

        public bool ValidateWords(string words)
        {
            if (!Regex.IsMatch(words, patternWords)) return false;
            return true;
        }
    }
}