using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WezwijPomoc;

namespace WezwijPomoc.Services
{
    public class TicketService
    {
        /// <summary>
        /// Tworzy nowy ticket i zapisuje go do bazy danych
        /// </summary>
        /// <param name="smsCode">Kod sms wygenerowany dla ticketu</param>
        /// <param name="phoneNumber">Numer teleonu ticketu </param>
        /// <returns>Wygenerowany ticket</returns>
        public Ticket CreateTicket(string smsCode, string phoneNumber)
        {
            Ticket ticket = new Ticket();

            ticket.data_zgloszenia = DateTime.Now;
            ticket.ip = GetIPAddress();
            ticket.kod_sms = smsCode;
            ticket.nr_telefonu = phoneNumber;

            using (Entities1 db = new Entities1())
            {
                db.Ticket.Add(ticket);
                db.SaveChangesAsync();
            }

            return ticket;
        }

        /// <summary>
        /// Pobiera tickety wygenerowane dla danego numeru telefonu
        /// </summary>
        /// <param name="phoneNumber"> Numer telefonu</param>
        /// <returns>Lista ticketów dla danego numeru posortowana rosnąco</returns>
        public IEnumerable<Ticket> GetTickets(string phoneNumber)
        {
            using (Entities1 db = new Entities1())
            {
                return db.Ticket.Select(s => s).Where(t => t.nr_telefonu == phoneNumber).OrderBy(p=>p.data_zgloszenia).ToList();
            }
        }

        public bool Exists(int id)
        {
            using (Entities1 db = new Entities1())
            {
                var result = db.Ticket.Any(s => s.id_ticketu == id);
                return result;
            }
        }

        protected string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }

        public TicketService()
        {

        }
    }
}