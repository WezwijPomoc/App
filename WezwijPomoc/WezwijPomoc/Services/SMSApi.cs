using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;

namespace WezwijPomoc.Services
{
    public class SMSApi : ISMSApi
    {
        private static string url = "https://justsend.pl/api/rest/v2/message/send";
        private static string apikey = "JDJhJDEyJGI5QmtBTk5qUHVISlRvUEZKajJzOHU5ajhjdFBWT0JFVy8uSndjTHpuZXNTNEVuYUZoMnR1";
        private string sender = "WOT";
        public void SendMessage(string phoneNumber, string messageText)
        {
            var httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
            httpWebRequest.ContentType = "application/json";
            httpWebRequest.Method = "POST";
            httpWebRequest.Headers.Add("App-Key", apikey);

            using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
            {
                string json = new JavaScriptSerializer().Serialize(new
                {
                    message = messageText,
                    from = sender,
                    bulkVariant = "PRO",
                    to=phoneNumber
                   
                });

                streamWriter.Write(json);
            }

            var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
            using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
            {
                var result = streamReader.ReadToEnd();
            }
        }
    }
}