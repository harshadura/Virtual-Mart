<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSchedule.aspx.cs" Inherits="WebApplicationAirLine.ViewSchedule" %>--%>

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
            <h2 style="padding: 50px 0 0 50px;">Schedules</h2>
                <div class="middle_form">
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="AccessDataSource1" 
                        AutoGenerateColumns="False" DataKeyNames="route_id">
                        <Columns>
                            <asp:BoundField DataField="route_id" HeaderText="route_id" 
                                InsertVisible="False" ReadOnly="True" SortExpression="route_id" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="from" HeaderText="from" SortExpression="from" />
                            <asp:BoundField DataField="to" HeaderText="to" SortExpression="to" />
                            <asp:BoundField DataField="max_no_seat_A" HeaderText="max_no_seat_A" 
                                SortExpression="max_no_seat_A" />
                            <asp:BoundField DataField="max_no_seat_B" HeaderText="max_no_seat_B" 
                                SortExpression="max_no_seat_B" />
                            <asp:BoundField DataField="max_no_seat_C" HeaderText="max_no_seat_C" 
                                SortExpression="max_no_seat_C" />
                            <asp:BoundField DataField="available_seat_A" HeaderText="available_seat_A" 
                                SortExpression="available_seat_A" />
                            <asp:BoundField DataField="available_seat_B" HeaderText="available_seat_B" 
                                SortExpression="available_seat_B" />
                            <asp:BoundField DataField="available_seat_C" HeaderText="available_seat_C" 
                                SortExpression="available_seat_C" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="C:\Users\harshadura\Desktop\VirtualMart_DCBSD\VirtualMart_WebServices\AirlineWS\App_Data\AirlineB.mdb" 
                        SelectCommand="SELECT [route_id], [date], [from], [to], [max_no_seat_A], [max_no_seat_B], [max_no_seat_C], [available_seat_A], [available_seat_B], [available_seat_C] FROM [flight]">
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
