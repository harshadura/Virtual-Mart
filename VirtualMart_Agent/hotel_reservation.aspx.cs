using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class hotel_reservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void next_Click(object sender, EventArgs e)
    {
        if (Session["man"] != null)
        {
            Passenger pass = (Passenger)Session["man"];

            pass.HotelType = roomType.Text;
            pass.HotelRooms = TextBox1.Text;
            pass.HotelCheckIn = Calendar1.SelectedDate.ToString();


            //////////////////

            string connect = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=|DataDirectory|Members.mdb";
            string query = "Select passport From Membership Where username = ?";
            
            List<string> list = new List<string>();
            
            using (OleDbConnection conn = new OleDbConnection(connect))
            {
                using (OleDbCommand cmd = new OleDbCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("", Session["UserId"]);
                    conn.Open();
                    OleDbDataReader test = cmd.ExecuteReader();
                       while (test.Read())
                       { 
                         list.Add(test.GetString(0));  
                       }
                 }
            }

            //aval.Text = list[0];

            String date1 = (Calendar1.SelectedDate.Day + "/" + Calendar1.SelectedDate.Month + "/" + Calendar1.SelectedDate.Year);

            try
            {
                double COST = 0;
                int roomID = 1;

                if (roomType.Text == "BB") 
                {
                    COST = 50000;
                }
                if (roomType.Text == "FB")
                {
                    COST = 19000;
                } 
                if (roomType.Text == "HB")
                {
                    COST = 26000;
                }
                    Hotel22ServiceReference.ServiceSoapClient s4 = new Hotel22ServiceReference.ServiceSoapClient();
                    double cost_price = (double)s4.getCostPrice(roomType.Text);
                    double total = COST * int.Parse(TextBox1.Text);
                    double deposit_agent_amount = total - (cost_price * int.Parse(TextBox1.Text));

                    if (s4.booking(roomID, int.Parse(TextBox1.Text), roomType.Text, COST, total, date1) == 1)
                    {

                        BankServiceReference.ServiceSoapClient s33 = new BankServiceReference.ServiceSoapClient();

                        s33.deposit("VMART-AGENT", deposit_agent_amount, "Credit From Hotel", "credit");
                        s33.deposit("TAJ-HOTEL", (cost_price * int.Parse(TextBox1.Text)), "Credit From Agent", "credit");
                        
                       // Response.Write("<script>alert('Hotel Booking Successfull!')</script>");
                        Response.Redirect("Summary.aspx?Id=" + Session["UserId"].ToString());

                        //TextBox1.Text = "";

                    }
                    else
                    {
                             Response.Write("<script>alert('Invalid Input Try Again!')</script>");
                    }

            }
            catch (Exception ee22)
            {
            }
        }
    }


    protected void checkHotelRoomAval_Click(object sender, EventArgs e)
    {
            Hotel22ServiceReference.ServiceSoapClient A = new Hotel22ServiceReference.ServiceSoapClient();
            String date = "28/10/2012";
            int roomStat = A.availableRoom(date); // Calendar2.SelectedDate.ToString()
            if (roomStat != null)
            {
                aval.Text = roomStat + " Rooms Available";
            }
            else
            {
                aval.Text = "Rooms not Available";
            }
       
    }
}
