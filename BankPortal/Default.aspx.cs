using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void OnAuthenticate(object sender, AuthenticateEventArgs e)
    {
        bool Authenticated = false;
        CheckBox chBox = (CheckBox)ctlLogin.FindControl("RememberMe");
        Authenticated = UserAuthenticate(ctlLogin.UserName, ctlLogin.Password);
        e.Authenticated = Authenticated;
        if (Authenticated == true)
        {
            if (chBox.Checked == true)
            {
                Response.Cookies["RFriend_Email"].Value = ctlLogin.UserName;
                Response.Cookies["RFriend_PWD"].Value = ctlLogin.Password;
                Response.Cookies["RFriend_UID"].Value = Session["UserId"].ToString();
                Response.Cookies["RFriend_Email"].Expires = DateTime.Now.AddMonths(3);
                Response.Cookies["RFriend_PWD"].Expires = DateTime.Now.AddMonths(3);
                Response.Cookies["RFriend_UID"].Expires = DateTime.Now.AddMonths(3);
            }
            Response.Redirect("BankPortal.aspx?Id=" + Session["UserId"].ToString() + "&Acc=" + Session["BankAcc"].ToString());
        }
    }

    private bool UserAuthenticate(string UserName, string Password)
    {
        bool boolReturnValue = false;
        //--------------------------------
        //Check UserID From Config File
        if (UserName == "Saman" && Password == "saman123")
        {
            boolReturnValue = true;
            return boolReturnValue;
        }

        else
        {
            string connect = @"Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\Users\harshadura\Desktop\VirtualMart_DCBSD\VirtualMart_WebServices\BankWS\App_Data\bank.mdb";
            string query = "Select Count(*) From Login Where username = ? And password = ?";

            int result = 0;
            using (OleDbConnection conn = new OleDbConnection(connect))
            {
                using (OleDbCommand cmd = new OleDbCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("", UserName);
                    cmd.Parameters.AddWithValue("", Password);
                    conn.Open();
                    Session["UserId"] = UserName;
                    result = (int)cmd.ExecuteScalar();
                }
            }

            if (result > 0)
            {
                boolReturnValue = true;

                string query2 = "Select bankacc From Login Where username = ?";
                using (OleDbConnection conn = new OleDbConnection(connect))
                {
                    using (OleDbCommand cmd = new OleDbCommand(query2, conn))
                    {
                        cmd.Parameters.AddWithValue("", UserName);
                        conn.Open();
                        String result2 = (String)cmd.ExecuteScalar();
                        Session["BankAcc"] = result2;
                    }
                }
            }


            return boolReturnValue;

        }
    }

}