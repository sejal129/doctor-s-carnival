﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        string stcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string id1 = (string)Session["mId"];
          string st = "select R.Rid,D.Dname,R.Reviews,R.Rrate from Doctors D, Patient P, Reviews R where R.Rpid=P.Pid and R.Rdid=D.did and D.did='" + id1 + "'";
            SqlDataSource ds = new SqlDataSource(stcon, st);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


    }
}