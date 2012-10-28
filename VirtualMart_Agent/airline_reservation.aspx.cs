using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class airline_reservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {    
       // Passenger pass2 = (Passenger)Session["passenger"];
//        Response.Write("<h1>asas Status</h1>" + pass2.HotelRooms);

        if (Session["man"] != null)
        {
            Passenger pass = (Passenger)Session["man"];
          //  Label1.Text = pass.HotelRooms + " | " + pass.HotelCheckIn + " | " + pass.HotelCheckout + " | " + pass.HotelType;

        }
    }
    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["man"] != null)
            {
                Passenger pass = (Passenger)Session["man"];
                
                String date1 = (Calendar1.SelectedDate.Day + "/" + Calendar1.SelectedDate.Month + "/" + Calendar1.SelectedDate.Year);

                double COST = 0;
                if (DropDownList1.Text == "A")
                {
                    COST = 90000;
                }
                if (DropDownList1.Text == "B")
                {
                    COST = 60000;
                }
                if (DropDownList1.Text == "C")
                {
                    COST = 35000;
                }

                pass.AirFrom = TextBox4.Text;
                pass.AirTo = TextBox5.Text;
                pass.AirDate = date1;
                pass.AirType = DropDownList1.Text;
                pass.AirTripType = "one-way";
                pass.AirRouteID = "2";
                pass.AirSeats = TextBox2.Text;
                pass.AirTicketPrice = "" + COST;

                AirlineServiceReference.ServiceSoapClient s2 = new AirlineServiceReference.ServiceSoapClient();
                double cost_price = (double)s2.getCostPrice(DropDownList1.Text);
                double total = double.Parse(TextBox2.Text) * COST;
                double deposit_agent_amount = total - (cost_price * int.Parse(TextBox2.Text));

                if (s2.booking(int.Parse("2"), int.Parse(TextBox2.Text), DropDownList1.Text, TextBox4.Text, TextBox5.Text, "one-way", COST, total) == 1)
                {
                    BankServiceReference.ServiceSoapClient s3 = new BankServiceReference.ServiceSoapClient();

                    s3.deposit("VMART-AGENT", deposit_agent_amount, "Credit From Airline", "credit");
                    s3.deposit("SL-AIRLINES", (cost_price * int.Parse(TextBox2.Text)), "Credit From Agent", "credit");

                    //  MessageBox.Show("Booking Successfull");

                    Response.Write("<script>alert('Airflight Booking Successfull!')</script>");
                    Response.Redirect("hotel_reservation.aspx?Id=" + Session["UserId"].ToString());
   
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox2.Text = "";

                }
                //  MessageBox.Show("Hotel Room Booking Successfull");

                else
                {
                    Response.Write("<script>alert('Invalid Input Try Again!')</script>");
                    //MessageBox.Show("Invalid Input Try Again");
                }

            }
        }

            catch (Exception ee22)
            {
            }
    }
}
