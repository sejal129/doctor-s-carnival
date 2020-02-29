using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        string stcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = (string)Session["id"];
            string st = "select A.Appid, D.Dname, H.Hname,P.Pname,H.Hfloor,H.Hrmno,A.Adate,A.Atime,A.Aday from Appointment A,Doctors D, Patient P,Hospital H where A.Adid=D.Did and A.Apid=P.Pid and A.Ahid=H.Hid and P.pid='" + id + "'";
            SqlDataSource ds = new SqlDataSource(stcon, st);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}