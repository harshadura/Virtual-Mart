<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckTransactions.aspx.cs" Inherits="CheckTransactions" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
	protected void Page_Load(Object sender, EventArgs e) {
		
		try {
            String acc = Request.QueryString["Acc"].ToString();
            string connect = @"Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\Users\harshadura\Desktop\VirtualMart_DCBSD\VirtualMart_WebServices\BankWS\App_Data\bank.mdb";
            string query = "Select * From transactions where Accountno=?";
            
            using (OleDbConnection conn = new OleDbConnection(connect))
            {
                using (OleDbCommand cmd = new OleDbCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("", acc);
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
                <h2>Bank Transactions</h2>
            </td>
        </tr>
     </table>
    
	<asp:datagrid id="grid" runat="server" />
	<asp:label id="message" runat="server" />
    
    <br /><br />
    </center>
</asp:Content>