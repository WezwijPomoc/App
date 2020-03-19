using System;
using System.Collections.Generic;
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
            TicketService ticketService = new TicketService();
            ticketService.CreateTicket("123456", "531969568");
        }
    }
}