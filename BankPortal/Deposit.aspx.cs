using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Deposit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void checkTrans_Click(object sender, EventArgs e)
    {
        BankServiceReference.ServiceSoapClient A = new BankServiceReference.ServiceSoapClient();
         A.deposit(TextBox1.Text, double.Parse(TextBox2.Text), TextBox4.Text, DropDownList1.Text); // Calendar2.SelectedDate.ToString()
            Response.Write("<script>alert('Amount Deposited Succesfully!')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
    }
}
