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
    public class Hotel
    {
        private string HotelName;

        public string HotelName1
        {
            get { return HotelName; }
            set { HotelName = value; }
        }
        private string Description;

        public string Description1
        {
            get { return Description; }
            set { Description = value; }
        }
        private int ContactNumber;

        public int ContactNumber1
        {
            get { return ContactNumber; }
            set { ContactNumber = value; }
        }
        private string Location;

        public string Location1
        {
            get { return Location; }
            set { Location = value; }
        }
      
        private int BankAccountNumber;

        public int BankAccountNumber1
        {
            get { return BankAccountNumber; }
            set { BankAccountNumber = value; }
        }
        private string Email;

        public string Email1
        {
            get { return Email; }
            set { Email = value; }
        }
    }
}
