<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CancelHotelBook.aspx.cs" Inherits="CancelHotelBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
   
    <style type="text/css">
        .style1
        {
            width: 112px;
        }
        .style2
        {
            width: 269px;
        }
        .style3
        {
            width: 71px;
        }
        #Select1
        {
            width: 116px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <h3 style="color:blue;">Cancel Hotel Reservation</h3>
    <br/>
    <table style="width:100%;">
    <tr>
        <td class="style1">
            Booking ID</td>
        <td class="style3">
            <asp:TextBox ID="TextBox4" runat="server" Width="59px"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp;<asp:Button ID="ButtonSearch" runat="server" Text="Cancel Booking" Width="146px" 
                onclick="ButtonSearch_Click" />
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style3">
            &nbsp;
        </td>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
           &nbsp;
            </td>
    </tr>
     <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style3">
            &nbsp;
        </td>
        <td class="style2">
            &nbsp;</td>
        <td>
           &nbsp;
        </td>
    </tr>
</table>
</asp:Content>


