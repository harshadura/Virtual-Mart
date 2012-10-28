using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Summary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["man"] != null)
        {
            Passenger pass = (Passenger)Session["man"];
            Label1.Text = pass.AirFrom;
            Label2.Text = pass.AirDate;
            Label3.Text = pass.AirTripType;
            Label4.Text = pass.AirRouteID;
            Label5.Text = pass.AirTo;
            Label6.Text = pass.AirTicketPrice;
            Label7.Text = pass.AirType;
            Label8.Text = pass.AirSeats;
            Label9.Text = pass.HotelRooms;
            Label10.Text = pass.HotelCheckIn;
            Label11.Text = pass.HotelType;
        }
    }
}
