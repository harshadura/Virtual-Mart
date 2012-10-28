using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckTransStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void checkTrans_Click(object sender, EventArgs e)
    {
        BankServiceReference.ServiceSoapClient A = new BankServiceReference.ServiceSoapClient();
        String roomStat = A.checktransactionstatus(int.Parse(TextBox1.Text)); // Calendar2.SelectedDate.ToString()
        if (roomStat != null)
        {
            Response.Write("<script>alert('Transaction Status: " + roomStat + "')</script>");
            TextBox1.Text = "";
        }
        else
        {
            Response.Write("<script>alert('Invalid command!')</script>");
            TextBox1.Text = "";
        }
    }
}
