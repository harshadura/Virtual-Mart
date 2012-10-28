<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hotel_reservation.aspx.cs" Inherits="hotel_reservation" %>

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
            width: 125px;
        }
        #Select1
        {
            width: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <h3 style="color:blue;">Hotel Reservation</h3>
    <br/>
    
    <table style="width:100%;">
     <tr>
            <td class="style1">
                Room Type</td>
            <td class="style2">
                <asp:DropDownList ID="roomType" runat="server">
                    <asp:ListItem>BB</asp:ListItem>
                    <asp:ListItem>HB</asp:ListItem>
                    <asp:ListItem>FB</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style3">
                <asp:Button ID="checkHotelRoomAval" runat="server" Text="Check Availability" 
                    onclick="checkHotelRoomAval_Click" />
            </td>
            <td>
                &nbsp;
                <asp:Label ID="aval" runat="server" Text=""></asp:Label>
            </td>
        </tr>
          <tr>
            <td class="style1">
                Rooms</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td></td><td>
            </td><td>
            </td> <td>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Arrival</td>
            <td class="style2">
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
            <td class="style3">
                </td>
            <td>
            </td>
        </tr>
          <tr>
            <td></td><td>
            </td><td>
            </td> <td>
            </td>
        </tr>
        
           <tr>
            <td> &nbsp;</td><td> &nbsp;
            </td><td> &nbsp;
                <asp:Button ID="next" runat="server" Text="Proceed Next" Width="149px" 
                    onclick="next_Click" />
            </td>  &nbsp;<td>
                   &nbsp;</td>
        </tr>
        
          </tr>
          <tr>
            <td>&nbsp;</td><td>&nbsp;
            </td><td>&nbsp;
            </td> <td>&nbsp;
            </td>
        </tr>
      
    </table>
</asp:Content>


