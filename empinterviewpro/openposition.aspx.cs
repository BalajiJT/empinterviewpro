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
    public partial class openposition : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=ITCLABJ68\\SQLEXPRESS;Initial Catalog=admusr;Integrated Security=True");
        SqlCommand scmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            {
                userlbl.Text = (string)Session["user"];
                userlbl0.Text = (string)Session["tenthmark"];
                userlbl1.Text = (string)Session["twelthmark"];
                userlbl2.Text = (string)Session["cgpa"];
            }
           
        }


        protected void applybtn_Click(object sender, EventArgs e)
        {
            con.Open();
            string s = "insert into dbo.selected(Candidate_name,tenth_mark,twelth_mark,Applied_roll,cgpa)values('" + userlbl.Text + "','" + Convert.ToInt32(userlbl0.Text) + "','" + Convert.ToInt32(userlbl1.Text) + "','" + DropDownopenpos.SelectedValue + "','" + Convert.ToInt32(userlbl2.Text) + "')";
            scmd = new SqlCommand(s, con);
            try
            {
                int res = scmd.ExecuteNonQuery();
                if (res>0)
                {

                }
                else
                {

                }
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }


            if (DropDownopenpos.SelectedIndex == 0)
            {
                if (Convert.ToInt32(userlbl0.Text) >= 70 && Convert.ToInt32(userlbl1.Text) >= 65 && Convert.ToInt32(userlbl2.Text) >= 6.5)
                {
                    opslbl.Text = "Thank you " + userlbl.Text + " for applying Data analyst role.We will mail you further details";
                }
                else
                {
                    opslbl.Text = "Sorry " + userlbl.Text + " you are not eligible for this position please apply for another position";
                }
            }
            else if (DropDownopenpos.SelectedIndex == 1)
            {
                if (Convert.ToInt32(userlbl0.Text) >= 70 && Convert.ToInt32(userlbl1.Text) >= 75 && Convert.ToInt32(userlbl2.Text) >= 7.5)
                {
                    opslbl.Text = "Thank you " + userlbl.Text + " for applying C# developer role.We will mail you further details";
                }
                else
                {
                    opslbl.Text = "Sorry " + userlbl.Text + " you are not eligible for this position please apply for another position";
                }
            }
            else if (DropDownopenpos.SelectedIndex == 2)
            {
                if (Convert.ToInt32(userlbl0.Text) >= 80 && Convert.ToInt32(userlbl1.Text) >= 85 && Convert.ToInt32(userlbl2.Text) >= 8)
                {
                    opslbl.Text = "Thank you  " + userlbl.Text + " for applying SQL developer role.We will mail you further details";
                }
                else
                {
                    opslbl.Text = "Sorry " + userlbl.Text + " you are not eligible for this position please apply for another position";
                }
            }
            else
            {
                opslbl.Text = "Please choose correct option";
            }




            userlbl.Text = "";
            userlbl0.Text = "";
            userlbl1.Text = "";
            userlbl2.Text = "";








        }
    }
}
