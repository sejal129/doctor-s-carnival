using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace doctor
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        //string stcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = Request.QueryString["a1"];
            string id = (string)Session["id"];
           
            // Label1.Text = id;
            HiddenField1.Value = Session["id"].ToString();
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm7.aspx");
        }

       
    }
}