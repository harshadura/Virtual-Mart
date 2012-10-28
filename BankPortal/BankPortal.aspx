<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BankPortal.aspx.cs" Inherits="BankPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 2px;
    }
    .style2
    {
        height: 100px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
      
      <br />
      <br />
      <center><h1>Welcome!</h1>
      <br />
      <br />
      <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                <h2>Account Balance : 
                    <asp:Label ID="AccBal" runat="server" Text=""></asp:Label>
                </h2>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="checkTrans" runat="server" Text="Check Bank Transactions" 
                    onclick="checkTrans_Click" />
            </td>
        </tr>
          <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Check Transactions Status" 
                    PostBackUrl="~/CheckTransStatus.aspx" Width="224px"  />
            </td>
        </tr>
          <tr>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="Deposit Money" 
                  PostBackUrl="~/Deposit.aspx" style="margin-left: 3px" Width="225px" />
            </td>
        </tr>
     </table>
      </center>
</asp:Content>

