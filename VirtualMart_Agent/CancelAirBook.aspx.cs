using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CancelAirBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        AirlineServiceReference.ServiceSoapClient A = new AirlineServiceReference.ServiceSoapClient();
        int roomStat = A.cancel(int.Parse(TextBox4.Text)); // Calendar2.SelectedDate.ToString()
        if (roomStat == 1 )
        {
            Response.Write("<script>alert('Booking has been cancelled succesfully!')</script>");
            TextBox4.Text = "";
        }
        else
        {
            Response.Write("<script>alert('Invalid command!')</script>");
            TextBox4.Text = "";
        }
    }
}
