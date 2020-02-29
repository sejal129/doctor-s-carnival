using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = (string)Session["mId"];
            // Label1.Text = id;
            HiddenField1.Value = Session["mId"].ToString();
        }

        protected void HiddenField1_ValueChanged(object sender, EventArgs e)
        {

        }

      
    }
}