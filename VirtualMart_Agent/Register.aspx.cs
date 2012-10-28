using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Data.OleDb;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
                        
    }
    
    protected void ButtonMakeProfile_Click(object sender, EventArgs e)
    {
        try
        {
            string connect = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=|DataDirectory|Members.mdb";
            string query = "Select Count(*) From Membership where username= ?";

            int result = 0;
            using (OleDbConnection conn = new OleDbConnection(connect))
            {
                using (OleDbCommand cmd = new OleDbCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("", TextBoxUsername.Text);
                    conn.Open();
                    result = (int)cmd.ExecuteScalar();
                }
            }

            if (result > 0)
            {
                Response.Write("<script>alert('This Username already being used, Please choose a new one.')</script>");
                // Duplicate User !
            }
            else
            {
                DataSet1TableAdapters.MembershipTableAdapter hb = new DataSet1TableAdapters.MembershipTableAdapter();
                hb.InsertQuery(TextBoxUsername.Text, TextBoxPassword.Text, TextBoxEmail.Text, TextBoxPassport.Text, TextBoxCity.Text, TextBoxTP.Text);

                Response.Write("<script>alert('Your Profile Saved Successfully!')</script>");
                //Response.Redirect("~/Home.aspx");
                //Response.Redirect(Request.Url.ToString());
                TextBoxUsername.Text = "";
                TextBoxPassword.Text = "";
                TextBoxRetypePassword.Text = "";
                TextBoxEmail.Text = "";
                TextBoxPassport.Text = "";
                TextBoxCity.Text = "";
                TextBoxTP.Text = "";
            }
        }
        catch (Exception ee2) 
        {
            Console.WriteLine("**********" + ee2);
        }
    }

}
