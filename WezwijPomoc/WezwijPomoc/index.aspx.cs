using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WezwijPomoc.Services;

namespace WezwijPomoc
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            TicketService ticketService = new TicketService();
            ticketService.CreateTicket("123456", "531969568");
            */
        }
        
        /*
        bool ValidatePesel()
        {
            string pesel = peselTextBox.Text;
            int peselNum;
            var pesel1 = pesel[0];
            var pesel2 = pesel[1];
            var pesel3 = pesel[2];
            var pesel4 = pesel[3];
            var pesel5 = pesel[4];
            var pesel6 = pesel[5];
            var pesel7 = pesel[6];
            var pesel8 = pesel[7];
            var pesel9 = pesel[8];
            var pesel10 = pesel[9];
            var pesel11 = pesel[10];

            try
            {
                int peselInt1 = Int32.Parse(pesel1.ToString());
                int peselInt2 = Int32.Parse(pesel2.ToString());
                int peselInt3 = Int32.Parse(pesel3.ToString());
                int peselInt4 = Int32.Parse(pesel4.ToString());
                int peselInt5 = Int32.Parse(pesel5.ToString());
                int peselInt6 = Int32.Parse(pesel6.ToString());
                int peselInt7 = Int32.Parse(pesel7.ToString());
                int peselInt8 = Int32.Parse(pesel8.ToString());
                int peselInt9 = Int32.Parse(pesel9.ToString());
                int peselInt10 = Int32.Parse(pesel10.ToString());
                int peselInt11 = Int32.Parse(pesel11.ToString());
                peselNum = peselInt1 * 1 + peselInt2 * 3 + peselInt3 * 7 + peselInt4 * 9 + peselInt5 * 1 + peselInt6 * 3 + peselInt7 * 7 + peselInt8 * 9 + peselInt9 * 1 + peselInt10 * 3;
                peselNum = peselNum % 10;
                peselNum = 10 - peselNum;
                peselNum = peselNum % 10;
                if (peselNum == peselInt11)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (FormatException error)
            {
                //strona błędu
                return false;

            }
        }
        
        bool validateFrequency()
        {
            TicketService ticketService = new TicketService();

            var tickets = ticketService.GetTickets(numerTelefonuTextBox.Text);
            if (tickets == null) return true;
            if (tickets.Count() < 1) return true;
            var ticket = tickets.Last();
            
            var difference = DateTime.Now - ticket.data_zgloszenia;
            if (difference.Value.Hours < 1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        

        

        protected void Send(object sender, EventArgs e)
        {
            ZgloszenieService zgloszenieService = new ZgloszenieService();
            Debug.Write(ValidatePesel());
            Debug.Write(validateFrequency());
            String adres_zgloszenia = miejscowoscTextBox.ToString() + " " + adresTextBox.ToString();
            zgloszenieService.CreateZgloszenie(peselTextBox.ToString(), imieTextBox.ToString(), numerTelefonuTextBox.ToString(), kategoriaPomocyDropDownList.ToString(), kodPocztowyTextBox.ToString(), adres_zgloszenia);
        }
        */
    }
}