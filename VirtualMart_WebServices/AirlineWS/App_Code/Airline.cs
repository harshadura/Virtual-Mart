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

/// <summary>
/// Summary description for Airline
/// </summary>
public class Airline
{
    int routeid;

    public int Routeid
    {
        get { return routeid; }
        set { routeid = value; }
    }
    string date;

    public string Date
    {
        get { return date; }
        set { date = value; }
    }
    string from;

    public string From
    {
        get { return from; }
        set { from = value; }
    }
    string to;

    public string To
    {
        get { return to; }
        set { to = value; }
    }


	public Airline()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}

 
