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
    public class booking
    {
        private int RecieptId;

        public int RecieptId1
        {
            get { return RecieptId; }
            set { RecieptId = value; }
        }
        private int CustomerId;

        public int CustomerId1
        {
            get { return CustomerId; }
            set { CustomerId = value; }
        }
        private DateTime Arrival;

        public DateTime Arrival1
        {
            get { return Arrival; }
            set { Arrival = value; }
        }
        private DateTime Departure;

        public DateTime Departure1
        {
            get { return Departure; }
            set { Departure = value; }
        }
        private int RoomId;

        public int RoomId1
        {
            get { return RoomId; }
            set { RoomId = value; }
        }
        private string RoomType;

        public string RoomType1
        {
            get { return RoomType; }
            set { RoomType = value; }
        }
        private bool Available;

        public bool Available1
        {
            get { return Available; }
            set { Available = value; }
        }
    }
}
