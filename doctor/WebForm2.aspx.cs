using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace doctor
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
       
       string stcon2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
       SqlConnection con;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string st1="";
            foreach (ListItem i in ListBox3.Items)
                if (i.Selected == true)
                    st1 = st1 +" "+ i.Text;

            string st2 = "";
            foreach (ListItem i in ListBox4.Items)
                if (i.Selected == true)
                    st2 = st2 + " " + i.Text;

            

             con = new SqlConnection(stcon2);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Doctors values('" + TextBox1.Text +" "+ TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox18.Text + "','" + DropDownList3.Text + "','" + st1 + "','" + Image1.ImageUrl+ "','" + TextBox9.Text + "','" + TextBox21.Text + "','" + TextBox11.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox19.Text  +"-"+ TextBox20.Text+"','" + st2 + "','" + TextBox14.Text + "','" + TextBox8.Text + "','" + DropDownList2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "')", con);
                cmd.ExecuteNonQuery();
                SqlCommand cm = new SqlCommand("select Did from Doctors where dname='" + TextBox1.Text + " " + TextBox2.Text + "' and dphone='" + TextBox4.Text + "'", con);
                SqlDataReader reader = cm.ExecuteReader();

                reader.Read();
                Label27.Text = reader["Did"].ToString();
                con.Close();
               
              
               
            Panel1.Visible = true; 
     
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
       
        
                if (FileUpload1.HasFile)
                {
                    string fnmp = FileUpload1.PostedFile.FileName;
                    string fex = System.IO.Path.GetExtension(fnmp);
                    string fnm = System.IO.Path.GetFileName(fnmp);
                    string fcty = FileUpload1.PostedFile.ContentType;
                    int fln = FileUpload1.PostedFile.ContentLength;
                    fex.ToLower();
                    if (fex.Equals(".jpg"))
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/" + fnm));
                    Image1.ImageUrl = "~/" + fnm;
                  

                }
            
            
      }

        protected void Button3_Click(object sender, EventArgs e)
        {
           con = new SqlConnection(stcon2);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into hospital values('" + Label27.Text + "','" +TextBox21.Text+ "',' " + TextBox22.Text + "',' " + TextBox23.Text + "',' " + TextBox24.Text + "')", con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Webform7.aspx");
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Text == "Yes")
            {
                TextBox9.Visible = true;
            }
            else
                TextBox9.Visible = false;
        }
    }
}