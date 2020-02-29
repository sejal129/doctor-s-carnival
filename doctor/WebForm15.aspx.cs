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
    public partial class WebForm15 : System.Web.UI.Page
    {
      string stcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True";
       string str,var,var2,day1;
       string strt,var3;
    
        protected void Page_Load(object sender, EventArgs e)
        {
           var = Request.QueryString["Did"];
           var2 = Calendar1.SelectedDate.ToShortDateString();
           Session["radst"] = " ";
           Session["date"] = " ";
           Session["day"] = " ";
           Session["tim"] = " ";
           day1= Calendar1.SelectedDate.DayOfWeek.ToString();
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in RadioButtonList1.Items)
                if (i.Selected == true)
                    str = RadioButtonList1.SelectedItem.Text;
          
            foreach (ListItem i in RadioButtonList2.Items)
                if (i.Selected == true)
                    strt = RadioButtonList2.SelectedItem.Text;
            SqlConnection con = new SqlConnection(stcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Atime from Appointment where Adate='" + var2 + "'",con);
            SqlDataReader dr = cmd.ExecuteReader();
            int flag = 1;
            while(dr.Read()&&flag==1)
                if(dr["Atime"].ToString()==strt)
                    flag=0;
            if (flag == 0)
            {
                Label3.Text = "Slot already full";
                Label3.Visible = true;
            }
            else
            {

                var3 = strt;
                Session["tim"] = var3;
            }
            con.Close();
            Session["radst"] = var;
            Session["date"] = var2;
            Session["day"] = day1;
            Session["tim"] = var3;
          // Session["hosp"] = str;
           Response.Redirect("WebForm11.aspx?hosp="+str);
        }

        
    }
}