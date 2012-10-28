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
    public void deposit(String acno, Double amount, string description, String type)
    {
        BankDataSetTableAdapters.transactionsTableAdapter tadp = new BankDataSetTableAdapters.transactionsTableAdapter();

        DateTime n1 = new DateTime();

        String am = "" + amount;
        tadp.Insert(acno, am, description, type, DateTime.Today);

        BankDataSetTableAdapters.AccountsTableAdapter adp2 = new BankDataSetTableAdapters.AccountsTableAdapter();

        double bal = (double)adp2.getbalnce(acno);
        double newbalance = (double)(bal + amount);
        adp2.updatebalance((decimal)newbalance, acno);
        //return "Hello World";
    }


    [WebMethod]
    public String trasnfer(String fromacno, String toacno, Double amount, String type)
    {
        String am = "" + amount;
        String description = "Trnasfer from " + fromacno;
        BankDataSetTableAdapters.transactionsTableAdapter adp = new BankDataSetTableAdapters.transactionsTableAdapter();
        adp.Insert(toacno, am, description, type, DateTime.Today);
        adp.Insert(fromacno, am, ("Transfered to : " + toacno), type, DateTime.Today);
        BankDataSetTableAdapters.AccountsTableAdapter adp2 = new BankDataSetTableAdapters.AccountsTableAdapter();
        double bal2 = (double)adp2.getbalnce(fromacno);
        double bal = (double)adp2.getbalnce(toacno);
        if (bal2 >= amount)
        {
            adp2.updatebalance(((decimal)(bal + amount)), toacno);


            adp2.updatebalance((decimal)(bal2 - amount), fromacno);
        }
        else
        {
            return "Insufficient balance in the Account";

        }


        return "Transaction completed Successfully";
    }

    [WebMethod]
    public Double checkbalance(String acno)
    {
        BankDataSetTableAdapters.AccountsTableAdapter adp2 = new BankDataSetTableAdapters.AccountsTableAdapter();
        double bal = (double)adp2.getbalnce(acno);

        return bal;
    }

    [WebMethod]
    public String checktransactionstatus(int tid)
    {
        BankDataSetTableAdapters.transactionsTableAdapter tadp = new BankDataSetTableAdapters.transactionsTableAdapter();

        string sta = "" + tadp.chktstatus(tid);

        return sta;
    }
}
