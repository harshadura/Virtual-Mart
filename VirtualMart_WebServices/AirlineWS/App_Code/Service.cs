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
    public Service () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod]
    public String getFrom(String date)
    {
        Airline2DataSet1TableAdapters.flightTableAdapter adp = new Airline2DataSet1TableAdapters.flightTableAdapter();

        return  (string)adp.getFrom(date);
    }

    [WebMethod]
    public String getTo(String date)
    {
        Airline2DataSet1TableAdapters.flightTableAdapter adp = new Airline2DataSet1TableAdapters.flightTableAdapter();

        return (string)adp.getTo(date);
    }


    [WebMethod]
    public double getTotalPrice(int bookingid)
    {
        
        Airline2DataSet1TableAdapters.bookingTableAdapter adp = new Airline2DataSet1TableAdapters.bookingTableAdapter();
        if (adp.getTotalPrice(bookingid) != null)
        {
            return (double)adp.getTotalPrice(bookingid);
        }

        else
        {
            return 0.0;
        }
    }

    [WebMethod]
    public double getCostPrice(string seat_type)
    {
        Airline2DataSet1TableAdapters.ticketpriceTableAdapter adp11 = new Airline2DataSet1TableAdapters.ticketpriceTableAdapter();
        return (double)adp11.getCostPrice(seat_type);

    }

    [WebMethod]
    public int booking(int route_id,int no_of_seat,string seat_type,string from, string to,string trip_type,double ticket_price,double total_price)
    {
        Airline2DataSet1TableAdapters.bookingTableAdapter adp2 = new Airline2DataSet1TableAdapters.bookingTableAdapter();

        Airline2DataSet1TableAdapters.flightTableAdapter adp3 = new Airline2DataSet1TableAdapters.flightTableAdapter();

        Airline2DataSet1TableAdapters.ticketpriceTableAdapter adp4 = new Airline2DataSet1TableAdapters.ticketpriceTableAdapter();
        
        if (seat_type == "A")
        {
            int noA = (int)adp3.getAvailableSeatA(route_id);
            if (noA >= no_of_seat)
            {
                if (ticket_price >= (double)adp4.getCostPrice("A") && ticket_price <= (double)adp4.getMaxPrice("A"))
                {
                    adp2.Insert(route_id, no_of_seat, seat_type, from, to, trip_type, ticket_price, total_price);
                    adp3.UpdateSeatA((noA - no_of_seat), route_id);
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

        else if (seat_type == "B")
        {
            int noB = (int)adp3.getAvailableSeatB(route_id);
            if (noB >= no_of_seat)
            {
                if (ticket_price >= (double)adp4.getCostPrice("B") && ticket_price <= (double)adp4.getMaxPrice("B"))
                {
                    adp2.Insert(route_id, no_of_seat, seat_type, from, to, trip_type, ticket_price, total_price);
                    adp3.UpdateSeatB((noB - no_of_seat), route_id);
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

        else if (seat_type == "C")
        {
            int noC = (int)adp3.getAvailableSeatC(route_id);
            if (noC >= no_of_seat)
            {
                if (ticket_price >= (double)adp4.getCostPrice("C") && ticket_price <= (double)adp4.getMaxPrice("C"))
                {
                    adp2.Insert(route_id, no_of_seat, seat_type, from, to, trip_type, ticket_price, total_price);
                    adp3.UpdateSeatC((noC - no_of_seat), route_id);
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
        Airline2DataSet1TableAdapters.bookingTableAdapter adp5 = new Airline2DataSet1TableAdapters.bookingTableAdapter();



        if (adp5.checkBooking(bookingid) != null )
        {

            string seat_type = adp5.getSeatType(bookingid);
            int route_id = (int)adp5.getRouteID(bookingid);
            int book_seat = (int)adp5.getNoOfSeat(bookingid);

            Airline2DataSet1TableAdapters.flightTableAdapter adp6 = new Airline2DataSet1TableAdapters.flightTableAdapter();


            if (seat_type == "A")
            {
                int seat = (int)adp6.getAvailableSeatA(route_id);

                adp6.UpdateSeatA((seat + book_seat), route_id);
                adp5.DeleteBooking(bookingid);
                return 1;

            }

            else if (seat_type == "B")
            {
                int seat = (int)adp6.getAvailableSeatB(route_id);

                adp6.UpdateSeatB((seat + book_seat), route_id);
                adp5.DeleteBooking(bookingid);
                return 1;

            }

            else if (seat_type == "C")
            {
                int seat = (int)adp6.getAvailableSeatC(route_id);

                adp6.UpdateSeatC((seat + book_seat), route_id);
                adp5.DeleteBooking(bookingid);
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
