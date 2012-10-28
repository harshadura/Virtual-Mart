<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckTransStatus.aspx.cs" Inherits="CheckTransStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 2px;
            width: 102px;
        }
        .style4
        {
            width: 102px;
        }
        .style5
        {
            width: 161px;
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
            <td align="center" class="style4">
               Transaction ID
            </td>
            <td align="center" class="style5">
           
                <asp:TextBox ID="TextBox1" runat="server" Width="67px"></asp:TextBox>
           
            </td>
            <td align="center">
               <asp:Button ID="checkTrans" runat="server" Text="Check" 
                    onclick="checkTrans_Click" style="margin-left: 11px" Width="152px" />
            </td>
        </tr>
        <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style5">
            &nbsp;
        </td>
        <td>
           &nbsp;
        </td>
    </tr>
     </table>
      </center>
</asp:Content>

