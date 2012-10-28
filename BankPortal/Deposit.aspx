<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Deposit.aspx.cs" Inherits="Deposit" %>

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
        .style6
        {
            width: 102px;
            height: 34px;
        }
        .style7
        {
            width: 161px;
            height: 34px;
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
               Account No
            </td>
            <td align="center" class="style5">
           
                <asp:TextBox ID="TextBox1" runat="server" Width="128px" 
                    style="margin-left: 0px"></asp:TextBox>
           
            </td>
        </tr>
               <tr>
            <td align="center" class="style4">
               Amount
            </td>
            <td align="center" class="style5">
           
                <asp:TextBox ID="TextBox2" runat="server" Width="125px"></asp:TextBox>
           
            </td>
        </tr>
        </tr>
               <tr>
            <td align="center" class="style6">
               Description
            </td>
            <td align="center" class="style7">
           
                <asp:TextBox ID="TextBox4" runat="server" Width="123px"></asp:TextBox>
           
            </td>
        </tr>
         <tr>
            <td align="center" class="style4">
               Type
            </td>
          
            <td align="center" class="style5">
           
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="Credit"></asp:ListItem>
                    <asp:ListItem Value="Savings"></asp:ListItem>
                </asp:DropDownList>
           
            </td>
        </tr>
        <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style5">
         &nbsp; <asp:Button ID="checkTrans" runat="server" Text="Deposit" 
                    onclick="checkTrans_Click" style="margin-left: 11px" Width="152px" />
            </td>
    </tr>
     </table>
      </center>
</asp:Content>

