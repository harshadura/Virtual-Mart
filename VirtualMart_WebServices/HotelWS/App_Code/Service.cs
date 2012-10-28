using System;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Service : System.Web.Services.WebService
{
    public Service()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public int availableRoom(string date)
    {
        Hotel1DataSet1TableAdapters.roomTableAdapter hb = new Hotel1DataSet1TableAdapters.roomTableAdapter();
        if (hb.getTotalRoom(date) != null)
        {
            return (int)hb.getTotalRoom(date);
        }

        else
        {
            return -999;
        }
    }


    [WebMethod]
    public double getCostPrice(string room_type)
    {
        Hotel1DataSet1TableAdapters.roompriceTableAdapter hb = new Hotel1DataSet1TableAdapters.roompriceTableAdapter();
        return (double)hb.getCostPrice(room_type);

    }


    [WebMethod]
    public double getTotalPrice(int bookingid)
    {

        Hotel1DataSet1TableAdapters.bookingTableAdapter hb12 = new Hotel1DataSet1TableAdapters.bookingTableAdapter();
        if (hb12.getTotalPrice(bookingid) != null)
        {
            return (double)hb12.getTotalPrice(bookingid);
        }

        else
        {
            return 0.0;
        }
    }



    [WebMethod]
    public int booking(int room_id, int no_of_room, string room_type, double room_price, double total_price, string date)
    {
        Hotel1DataSet1TableAdapters.bookingTableAdapter hb1 = new Hotel1DataSet1TableAdapters.bookingTableAdapter();
        Hotel1DataSet1TableAdapters.roompriceTableAdapter hb2 = new Hotel1DataSet1TableAdapters.roompriceTableAdapter();
        Hotel1DataSet1TableAdapters.roomTableAdapter hb3 = new Hotel1DataSet1TableAdapters.roomTableAdapter();


        if (room_type == "BB")
        {
            int noA = (int)hb3.getAvailableRoomBB(room_id);
            if (noA >= no_of_room)
            {
                if (room_price >= (double)hb2.getCostPrice("BB") && room_price <= (double)hb2.getMaxPrice("BB"))
                {

                    hb1.Insert(room_id, no_of_room, room_type, room_price, total_price, date);
                    hb3.UpdateRoomBB(noA - no_of_room, room_id);
                    return 1;
                }
                else
                {
                    return 0;
                }

            }

            else
            {
                return 0;
            }
        }

        else if (room_type == "HB")
        {
            int noB = (int)hb3.getAvailableRoomHB(room_id);
            if (noB >= no_of_room)
            {
                if (room_price >= (double)hb2.getCostPrice("HB") && room_price <= (double)hb2.getMaxPrice("HB"))
                {

                    hb1.Insert(room_id, no_of_room, room_type, room_price, total_price, date);
                    hb3.UpdateRoomHB(noB - no_of_room,room_id);
                    return 1;
                }
                else
                {
                    return 0;
                }

            }

            else
            {
                return 0;
            }
        }

        else if (room_type == "FB")
        {

            int noC = (int)hb3.getAvailableRoomFB(room_id);
            if (noC >= no_of_room)
            {
                if (room_price >= (double)hb2.getCostPrice("FB") && room_price <= (double)hb2.getMaxPrice("FB"))
                {

                    hb1.Insert(room_id, no_of_room, room_type, room_price, total_price, date);
                    hb3.UpdateRoomFB(noC - no_of_room,room_id);
                    return 1;
                }
                else
                {
                    return 0;
                }

            }

            else
            {
                return 0;
            }
        }

        else
        {
            return 0;
        }
    }

    [WebMethod]
    public int cancel(int bookingid)
    {

        Hotel1DataSet1TableAdapters.bookingTableAdapter hb4 = new Hotel1DataSet1TableAdapters.bookingTableAdapter();
        
        if (hb4.getNoOfRoom(bookingid) != null)
        {

            string room_type =hb4.getRoomType(bookingid);
            int room_id = (int)hb4.getRoomID(bookingid);
            int book_room = (int)hb4.getNoOfRoom(bookingid);

            Hotel1DataSet1TableAdapters.roomTableAdapter hb5 = new Hotel1DataSet1TableAdapters.roomTableAdapter();


            if (room_type == "BB")
            {
                int room = (int)hb5.getAvailableRoomBB(room_id);

                hb5.UpdateRoomBB((room + book_room), room_id);
                hb4.DeleteBooking(bookingid);
               return 1;
            }

            else if (room_type == "HB")
            {
                int room = (int)hb5.getAvailableRoomHB(room_id);

                hb5.UpdateRoomHB((room + book_room), room_id);
                hb4.DeleteBooking(bookingid);
                return 1;
            }

            else if (room_type == "FB")
            {
                int room = (int)hb5.getAvailableRoomFB(room_id);

                hb5.UpdateRoomFB((room + book_room), room_id);
                hb4.DeleteBooking(bookingid);
                return 1;
            }

             else
            {
                return 0;
            }

        }

        else
        {
            return 0;
        }

         
    }

}

    

