<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
   CodeFile="FlightSchedule.aspx.cs" Inherits="FlightSchedule" %>

<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
	protected void Page_Load(Object sender, EventArgs e) {
		
		try {
            string connect = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=|DataDirectory|Members.mdb";
            string query = "Select * From Membership";
            
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
     <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                <h2>Recent Users List</h2>
            </td>
        </tr>
     </table>
    
	<asp:datagrid id="grid" runat="server" />
	<asp:label id="message" runat="server" />
    
    <br /><br />
    </center>
</asp:Content>