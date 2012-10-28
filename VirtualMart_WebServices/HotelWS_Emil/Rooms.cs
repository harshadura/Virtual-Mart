using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace HotelWebService
{
    public class Rooms
    {
        private int RoomId;

        public int RoomId1
        {
            get { return RoomId; }
            set { RoomId = value; }
        }
        private string Type;

        public string Type1
        {
            get { return Type; }
            set { Type = value; }
        }
        private double MaxPrice;

        public double MaxPrice1
        {
            get { return MaxPrice; }
            set { MaxPrice = value; }
        }
        private double CostPrice;

        public double CostPrice1
        {
            get { return CostPrice; }
            set { CostPrice = value; }
        }
        private int NumberOfRooms;

        public int NumberOfRooms1
        {
            get { return NumberOfRooms; }
            set { NumberOfRooms = value; }
        }
    }
}
