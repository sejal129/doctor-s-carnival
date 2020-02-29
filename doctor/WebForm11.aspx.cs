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
    public partial class WebForm11 : System.Web.UI.Page
    {
       
       string stcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            string hos = Request.QueryString["hosp"];
            string hosid;
           // string hos = (string)Session["hosp"];
            if (hos!=null)
            {
                SqlConnection con = new SqlConnection(stcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select hid from hospital where hname='" + hos + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                 dr.Read();
                 hosid = dr["hid"].ToString();
                
               con.Close();
                string id = (string)Session["id"];
                string file = (string)Session["radst"]; 
                string d1 = (string)Session["date"];
                string d2 = (string)Session["day"];
                string d3 = (string)Session["tim"];
               con.Open();
                SqlCommand cmd2 = new SqlCommand("Select * from appointment where Adid='" + file + "' and Apid='" + id + "' and Adate='" + d1 + "'", con);
                SqlDataReader dr2 = cmd2.ExecuteReader();

                if (dr2.HasRows)
                {
                      Label2.Text = "You already have an appointment with the doctor";
                      Label2.Visible = true;
                    con.Close();
                }
                else
                {
                    con.Close();
                    string ins = "insert into Appointment values('" + file + "','" + hosid + "','" + id + "','" + d1 + "','" + d3 + "','" + d2 + "')";  
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand(ins, con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                }

                string st = "select A.Appid, D.Dname, H.Hname,P.Pname,H.Hfloor,H.Hrmno,A.Adate,A.Atime,A.Aday from Appointment A,Doctors D, Patient P,Hospital H where A.Adid=D.Did and A.Apid=P.Pid and A.Ahid=H.Hid and P.pid='" + id + "'and  D.did='" + file + "'and H.hname='" + hos + "' and A.Adate='"+d1+"'";
                SqlDataSource ds = new SqlDataSource(stcon, st);
                DetailsView1.DataSource = ds;
                DetailsView1.DataBind();
               
                MultiView1.ActiveViewIndex = 0;
            }
        }
    }
}