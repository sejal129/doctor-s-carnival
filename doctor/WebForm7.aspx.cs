using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Value =="Patient")
                Response.Redirect("WebForm1.aspx");
            else
                Response.Redirect("WebForm2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Value == "Patient")
                Response.Redirect("WebForm6.aspx");
            else
                Response.Redirect("WebForm5.aspx");
        }
      
      
    }
}