using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace doctor
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string stcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

     

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(stcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Patient values('" + TextBox1.Text +" "+ TextBox2.Text +  "','" + DropDownList1.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox10.Text + "','" + TextBox3.Text + "','" + TextBox11.Text + "','" + DropDownList2.Text + "','" + TextBox4.Text + "','" + TextBox9.Text + "')", con);
            
           cmd.ExecuteNonQuery();  
            //con.Close();
            //con = new SqlConnection(stcon);
            //con.Open();
            //string str;
           
            //cmd = new SqlCommand(str, con);
           SqlCommand cm = new SqlCommand("select pid from patient where pname='" + TextBox1.Text + " " + TextBox2.Text + "' and pphone='" + TextBox4.Text + "'", con);
            SqlDataReader reader = cm.ExecuteReader();
            
            reader.Read();
            Label17.Text = reader["Pid"].ToString();
           con.Close();
            


            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform7.aspx");
        }
    }
}