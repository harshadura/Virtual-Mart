<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
   CodeFile="CheckAirBookings.aspx.cs" Inherits="CheckAirBookings" %>

<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
	protected void Page_Load(Object sender, EventArgs e) {
		
		try {
            string connect = @"Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\Users\harshadura\Desktop\VirtualMart_DCBSD\VirtualMart_WebServices\AirlineWS\App_Data\AirlineB.mdb";
            string query = "Select * From booking";
            
            using (OleDbConnection conn = new OleDbConnection(connect))
            {
                using (OleDbCommand cmd = new OleDbCommand(query, conn))
                {
                    conn.Open();
                    grid.DataSource = cmd.ExecuteReader();
                    grid.DataBind();
                }
            }

		} catch (Exception err) {
			message.Text = "<p><font color=\"red\">Err: " + 
				err.Message + "</font></p>";
		} finally {
		}
	}
</script>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
     <br/>
      <h3 style="color:blue;">Check Airline Reservations</h3>
    <br/>
   
	<asp:datagrid id="grid" runat="server" />
	<asp:label id="message" runat="server" />
    
    <br /><br />
    </center>
</asp:Content>