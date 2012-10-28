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

namespace AirLineUI
{
    public partial class Shedule1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    DataSet1TableAdapters.bookingTableAdapter bk = new AirLineUI.DataSet1TableAdapters.bookingTableAdapter();
        //    bk.Insert(int.Parse(TextBox1.Text), int.Parse(TextBox2.Text), TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, double.Parse(TextBox7.Text), double.Parse(TextBox8.Text));

        //}

        protected void Button2_Click1(object sender, EventArgs e)
        {
            DataSet1TableAdapters.bookingTableAdapter bk = new AirLineUI.DataSet1TableAdapters.bookingTableAdapter();
            bk.Insert(int.Parse(TextBox1.Text), int.Parse(TextBox2.Text), TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, double.Parse(TextBox7.Text), double.Parse(TextBox8.Text));
        }
    }
}
