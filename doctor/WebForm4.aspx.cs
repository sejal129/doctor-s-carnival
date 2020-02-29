using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace doctor
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string stcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string id = (string)Session["mId"];
            
            HiddenField1.Value = Session["mId"].ToString();
          
            SqlConnection con = new SqlConnection(stcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from doctors where did='" + id + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            string imgpth = dr["dimage"].ToString();
            con.Close();
            Image2.ImageUrl = imgpth;
          

         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm7.aspx");
        }

        
    }
}