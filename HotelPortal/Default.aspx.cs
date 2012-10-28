using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace Hotel
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            int available=0;
            int room=0;
            int total=0;
            

            Label1.Visible = false;

            HotelDataTableAdapters.bookingTableAdapter booking = new Hotel.HotelDataTableAdapters.bookingTableAdapter();


            HotelDataTableAdapters.roomsTableAdapter rooms = new Hotel.HotelDataTableAdapters.roomsTableAdapter();
            DataTable dt = booking.BookedRooms(DropDownList3.SelectedValue);
            int num = 0;
            foreach (DataRow dr in dt.Rows) 
            {
                num = num + (int)dr["RoomId"];
            }
            try
            {
                room = (int)rooms.getRooms(DropDownList3.SelectedValue);

                available = (int)booking.getAvailableRooms(DateTime.Parse(TextBox1.Text), DropDownList3.SelectedValue, DateTime.Parse(TextBox2.Text));

               
            }
            catch (Exception ee) { }
            int t = (int)rooms.getRooms(DropDownList3.SelectedValue);
            total =   t - num;


            if (total >= int.Parse(TextBox3.Text))
            {
                Label1.Visible = true;
                Label1.Text = t+" ";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Not available";
            }



        }
    }
}
