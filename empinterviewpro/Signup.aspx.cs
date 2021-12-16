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
    public partial class Signup : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=ITCLABJ68\\SQLEXPRESS;Initial Catalog=admusr;Integrated Security=True");



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           
            
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;


                cmd.CommandText = "insert into dbo.signin(Username,Password,gender,mailid,dob,tenth,twelth,cgpa)values('" + usersigntxt.Text + "','" + signpasstxt.Text + "','" + gentxt.Text + "','" + mailtxt.Text + "','" + DateTime.Parse(dobtxt.Text) + "','" + Convert.ToInt32(tenthtxt.Text) + "','" + Convert.ToInt32(twelthtxt.Text) + "','" + Convert.ToInt32(cgpatxt.Text) + "')";
                cmd.ExecuteNonQuery();
                 con.Close();
            Session["user"] = usersigntxt.Text;
            Session["tenthmark"] = tenthtxt.Text;
            Session["twelthmark"] = twelthtxt.Text;
            Session["cgpa"] = cgpatxt.Text;
            Response.Redirect("openposition.aspx");


            usersigntxt.Text = "";
            signpasstxt.Text = "";
            gentxt.Text = "";
            mailtxt.Text = "";
            dobtxt.Text = "";
            tenthtxt.Text = "";
            twelthtxt.Text = "";
            cgpatxt.Text = "";
            
        }
    }
}