using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Text;

namespace WezwijPomoc.Services
{
    public class MessageService
    {
        public string CreateMessage(string token)
        {
            int counter = 0;
            
            string path = HttpContext.Current.Server.MapPath("~/Views/message.html");

            StringBuilder htmlmessage = new StringBuilder();
            StringBuilder lineSB = new StringBuilder("<a href =\"https://wezwij-pomoc.azurewebsites.net/");
            StringBuilder lineSB2 = new StringBuilder("<p style=\"margin: 0; \"><a href=\"https://wezwij-pomoc.azurewebsites.net/");

            foreach (string line in File.ReadLines(path))
            {
                counter++;
                if (counter == 167)
                {
                    lineSB.Append(token);
                    lineSB.Append("target=\"_blank\" style=\"display: inline-block; padding: 16px 36px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; color: #ffffff; text-decoration: none; border-radius: 6px;\">Potwierdź</a>");
                    htmlmessage.Append(lineSB.ToString());
                }
                else if(counter == 182)
                {
                    lineSB2.Append(token);
                    lineSB.Append(" target=\"_blank\">https://wezwij-pomoc.azurewebsites.net/");
                    lineSB2.Append(token);
                    lineSB2.Append("</a></p>");
                    htmlmessage.Append(lineSB2.ToString());

                }
                else
                {
                    htmlmessage.Append(line);
                }

            }
            return htmlmessage.ToString();
        }
    }
}