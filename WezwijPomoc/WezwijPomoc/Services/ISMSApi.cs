using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WezwijPomoc.Services
{
    public interface ISMSApi
    {
        void SendMessage(string phoneNumber, string message);
    }
}
