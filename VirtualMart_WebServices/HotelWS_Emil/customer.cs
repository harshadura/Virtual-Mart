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
    public class customer
    {
        private string Name;

        public string Name1
        {
            get { return Name; }
            set { Name = value; }
        }
        private string Address;

        public string Address1
        {
            get { return Address; }
            set { Address = value; }
        }
        private string Email;

        public string Email1
        {
            get { return Email; }
            set { Email = value; }
        }
        private int ContactNumber;

        public int ContactNumber1
        {
            get { return ContactNumber; }
            set { ContactNumber = value; }
        }
        private int PassportId;

        public int PassportId1
        {
            get { return PassportId; }
            set { PassportId = value; }
        }
    }
}
