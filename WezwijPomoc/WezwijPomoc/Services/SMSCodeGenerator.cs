using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;

namespace WezwijPomoc
{
    /// <summary>
    /// Klasa generująca kody sms
    /// </summary>
    public class SMSCodeGenerator 
    {
        private Random random;

        public Task<string> GetSMSCode()
        {
            return Task.Factory.StartNew(() => {
                var numbers = new byte[6];
                random.NextBytes(numbers);
                var partialSum = PartialSum(numbers);

                if (partialSum < 100000)
                    partialSum += 100000;
                partialSum += random.Next(99999);
                return string.Empty + partialSum;
                });
        }

        private int PartialSum(byte[] bytes)
        {
            int sum = 0;
            foreach( var b in bytes)
            {
                sum += b;
            }
            sum = sum * sum *2;
            return sum / 10;
        }

        public SMSCodeGenerator()
        {
            random = new Random();
        }
    }
}