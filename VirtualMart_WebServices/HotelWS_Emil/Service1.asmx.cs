using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;

namespace HotelWebService
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {

        [WebMethod]
        public Hotel Details()
        {
            Hotel h = new Hotel();
            DataSetHotelTableAdapters.hotelTableAdapter hotel = new HotelWebService.DataSetHotelTableAdapters.hotelTableAdapter();
            h.BankAccountNumber1 = (int)hotel.getBankAccountNumber();
            h.ContactNumber1 = (int)hotel.getContactNumber();
            h.Description1 = (string)hotel.getDescription();
            h.HotelName1 = (string)hotel.getHotelName();
            
            h.Email1 = (string)hotel.getEmail();
            h.Location1 = (string)hotel.getLocation();

            return h;
        }

        [WebMethod]
        public int GetAvailableRooms(string Type)
        {
            DataSetHotelTableAdapters.roomsTableAdapter rooms = new HotelWebService.DataSetHotelTableAdapters.roomsTableAdapter();
            int Available = (int)rooms.getAvailableRooms(Type);

            return Available;
        }
        [WebMethod]
        public bool IsAvailable(string Type, int NumberOfRooms,DateTime Arrival,DateTime Departure)
        {
            DataSetHotelTableAdapters.bookingTableAdapter booking = new HotelWebService.DataSetHotelTableAdapters.bookingTableAdapter();
            int UnavailableRooms = (int)booking.getUnavailable(Arrival, Departure, Type);

            DataSetHotelTableAdapters.roomsTableAdapter rooms = new HotelWebService.DataSetHotelTableAdapters.roomsTableAdapter();
            int TotalRooms = (int)rooms.getAvailableRooms(Type);
            int Available = TotalRooms - UnavailableRooms;

            if (Available >= NumberOfRooms)
            {
                return true;

            }
            else 
            {
                return false;
            }
        }

        [WebMethod]
        public double Reservation(int CustomerId, int RecieptId, DateTime Arrival, DateTime Depature, int RoomQuantity, string RoomType,string CustomerName, string Address, int ContactNumber, int PassportId, string email)
        {
            DataSetHotelTableAdapters.bookingTableAdapter reservation = new HotelWebService.DataSetHotelTableAdapters.bookingTableAdapter();
            int ID = 0;
            try {  ID = (int)reservation.getMaxId() + 1; }
            catch (Exception ee) { ID = 1; }

            DataSetHotelTableAdapters.customerTableAdapter customer = new HotelWebService.DataSetHotelTableAdapters.customerTableAdapter();
            reservation.Insert(RecieptId,CustomerId, Arrival, Depature, RoomQuantity, RoomType, true);
            customer.Insert(CustomerId, CustomerName, Address, ContactNumber, PassportId, email);
            double total =(double)getMaxPrice(RoomType) * RoomQuantity;

            return total;

        } 
        [WebMethod]
        public bool cancelBooking(int rid)
        {
            DataSetHotelTableAdapters.bookingTableAdapter Reservation = new HotelWebService.DataSetHotelTableAdapters.bookingTableAdapter();
            Reservation.calcelBooking(rid);

            return true;
        }
       

        [WebMethod]
        public double getMaxPrice(string Type)
        {

           

            DataSetHotelTableAdapters.roomsTableAdapter max = new HotelWebService.DataSetHotelTableAdapters.roomsTableAdapter();
            double MaxPrice1 = (double)max.maxPrice(Type);
            

            return MaxPrice1;
            
            
        }
        [WebMethod]
        public double getCostPrice(string Type)
        {
            DataSetHotelTableAdapters.roomsTableAdapter cost = new HotelWebService.DataSetHotelTableAdapters.roomsTableAdapter();
            double costPrice1 = (double)cost.costPrice(Type);

            return costPrice1;
        }
       
    
    }
}
