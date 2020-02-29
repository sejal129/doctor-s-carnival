using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace doctor
{
    public partial class WebForm3 : System.Web.UI.Page
    {
       string id,stcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = (string)Session["id"];
            string st = "select distinct dname from doctors d,appointment a where a.apid='"+id+"' and a.adid=d.did";
            SqlConnection con = new SqlConnection(stcon);
            con.Open();
            SqlCommand cmd = new SqlCommand(st, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
                DropDownList1.Items.Add(dr["dname"].ToString());
            con.Close();
        }
        protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
        {
            lit_Rating.Text = "You rated " + Rating1.CurrentRating.ToString() + "/" + Rating1.MaxRating.ToString() + ". Thank you.";
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string rat = Rating1.CurrentRating.ToString();
            SqlConnection con = new SqlConnection(stcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select did from doctors where dname='"+DropDownList1.SelectedItem.Text+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int i = Convert.ToInt32( dr["did"]);
            con.Close();
            con.Open();

            SqlCommand cmd1 = new SqlCommand("Insert into Reviews values('" + id + "','" + i + "','" + TextBox1.Text + "','" + rat + "')", con);
            cmd1.ExecuteNonQuery();
            con.Close();

            Label1.Text = "Review done!!";
            Label1.Visible = true;
        }
    
    }
}