<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="airline_reservation.aspx.cs" Inherits="airline_reservation" %>


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
    
    <h3 style="color:blue;">AirLine Reservation</h3>
    <br/>
    <table style="width:100%;">
    <tr>
        <td class="style1">
            From</td>
        <td class="style3">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="style2">
            &nbsp;To&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
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
    <tr>
        <td class="style1">
            Date</td>
        <td class="style3">
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </td>
        <td class="style2">
        </td>
        <td>
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
    <tr>
        <td class="style1">
        <td class="style3">
        </td>
        <td class="style2">
            Seat Type</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style1">
           </td>
        <td class="style3">
        </td>
        <td class="style2">
            Passsengers</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
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
            <asp:Button ID="ButtonSearch" runat="server" Text="Proceed Next" Width="220px" 
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
        <td>
           &nbsp;
        </td>
    </tr>
</table>
</asp:Content>


