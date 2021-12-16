using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace empinterviewpro
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ITCLABJ68\\SQLEXPRESS;Initial Catalog=admusr;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from adminuser where username='" + usrtxt.Text + "'and password='" + pastxt.Text + "'and usertype='" + DropDownList1.SelectedItem.ToString() + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count > 0)
            {
                Response.Write("<script>alert(you logined as '" + dt.Rows[0][2] + "')</script>");
                if(DropDownList1.SelectedIndex==0)
                {
                    Server.Transfer("Admin.aspx");
                }
                else if(DropDownList1.SelectedIndex==1)
                {
                    
                    Server.Transfer("openposition.aspx");
                }
            }
            else
            {
                Response.Write("Error please reverify it");
            }



        }

        protected void sgnbtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("Signup.aspx");
        }
    }
}
