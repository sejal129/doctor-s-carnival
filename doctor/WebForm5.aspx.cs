using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace doctor
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string stcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["mId"] = " ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con;
           con = new SqlConnection(stcon);
            con.Open();
            SqlCommand cm1=new SqlCommand("select * from doctors where did= '"+TextBox3.Text+"'and demail='"+TextBox1.Text+"' and dpassword='"+TextBox2.Text+"'",con);
            SqlDataReader reader = cm1.ExecuteReader();
                
            reader.Read();
            if (reader.HasRows)
            {

                Session["mId"] = TextBox3.Text;
                Response.Redirect("WebForm9.aspx");

            }
            else
                Label4.Text = "INVALID LOGIN";
            con.Close();

        }
    }
}