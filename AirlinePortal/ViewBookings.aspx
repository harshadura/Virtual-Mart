<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBookings.aspx.cs" Inherits="AirLineUI.ViewBookings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Air Lanka Reservation</title>
    <link href="Style/Stylesheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
    
        <div id="header">
        
            <h1 style="font-family:Arial, Helvetica, sans-serif; color:#FFFFFF; font-size:25pt;padding:10px;float:right;">Air Lanka Reservation Summary</h1>
        </div>
        
        <div id="menu">
            <div id="menu_alin">
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="schedule.aspx">Airline Reservation</a></li>
                <li><a href="#">Reservation Summary</a></li>
                <li style="margin-right:0;"><a href="ViewBookings.aspx">View Bookings</a></li>
            </ul>
            </div>
        </div>
        
        <div id="middle">
            <h2 style="padding: 50px 0 0 50px;">View Bookings</h2>
                <div class="middle_form">
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="AccessDataSource1" 
                        AutoGenerateColumns="False" DataKeyNames="booking_id">
                        <Columns>
                            <asp:BoundField DataField="booking_id" HeaderText="booking_id" 
                                InsertVisible="False" ReadOnly="True" SortExpression="booking_id" />
                            <asp:BoundField DataField="route_id" HeaderText="route_id" 
                                SortExpression="route_id" />
                            <asp:BoundField DataField="no_of_seat" HeaderText="no_of_seat" 
                                SortExpression="no_of_seat" />
                            <asp:BoundField DataField="seat_type" HeaderText="seat_type" 
                                SortExpression="seat_type" />
                            <asp:BoundField DataField="from" HeaderText="from" 
                                SortExpression="from" />
                            <asp:BoundField DataField="to" HeaderText="to" 
                                SortExpression="to" />
                            <asp:BoundField DataField="trip_type" HeaderText="trip_type" 
                                SortExpression="trip_type" />
                            <asp:BoundField DataField="ticket_price" HeaderText="ticket_price" 
                                SortExpression="ticket_price" />
                            <asp:BoundField DataField="total_price" HeaderText="total_price" 
                                SortExpression="total_price" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="C:\Users\harshadura\Desktop\VirtualMart_DCBSD\VirtualMart_WebServices\AirlineWS\App_Data\AirlineB.mdb" 
                        
                        SelectCommand="SELECT [booking_id], [route_id], [no_of_seat], [seat_type], [from], [to], [trip_type], [ticket_price], [total_price] FROM [booking]">
                    </asp:AccessDataSource>
                </div>
        </div>
        
        <div id="footer">
            <span style="margin:5px;float:right;font-size:8pt;font-family:Arial;color:#fff;">©2012 Air Lanka.</span>
        </div>
        
    </div>
    </form>
</body>
</html>
