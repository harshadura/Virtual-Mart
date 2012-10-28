using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BankPortal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!object.Equals(Session["UserId"], null))
        {
            try
            {
                BankServiceReference.ServiceSoapClient s4 = new BankServiceReference.ServiceSoapClient();
                double bal = s4.checkbalance(Request.QueryString["Acc"].ToString());
                AccBal.Text = " Rs. " + bal;
            }
            catch (Exception ee2)
            {
            }
        }
        else
        {
            AccBal.Text = "0";
        }
        
      
    }

    protected void checkTrans_Click(object sender, EventArgs e)
    {
        Response.Redirect("CheckTransactions.aspx?Acc=" + Session["BankAcc"].ToString());
   
    }
}
