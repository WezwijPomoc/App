using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WezwijPomoc
{
	public partial class LogowanieInstytucja : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void potwierdzButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/indexFromMaster.aspx");
        }
    }
}