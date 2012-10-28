<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="AirLineUI.Shedule1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Transaction page</title>
    <link href="Style/Stylesheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
   
    
    <div id="wrapper">
    
        <div id="header">
        
            <h1 style="font-family:Arial, Helvetica, sans-serif; color:#FFFFFF; font-size:25pt;padding:10px;float:right;">Air Lanka Reservation</h1>
        </div>
        
        <div id="menu">
            <div id="menu_alin">
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="Schedule.aspx">Airline Reservation</a></li>
                <li><a href="ViewSchedule.aspx">Reservation Summary</a></li>
                 <li style="margin-right:0;"><a href="ViewBookings.aspx">View Bookings</a></li>
                </ul>
            </div>
        </div>
        
        <div id="middle">
            <h2 style="padding: 50px 0 0 50px;">Add Schedule</h2>
                <div class="middle_form1">
                  <form id="Form2" runat="server">
                            <asp:Label ID="Label1" runat="server" Text="Flight Number:"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                            <asp:Label ID="Label2" runat="server" Text="Number Of Seats:"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                            <asp:Label ID="Label4" runat="server" Text="Seat Type:"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
                            <asp:Label ID="Label5" runat="server" Text="From:"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
                            <asp:Label ID="Label3" runat="server" Text="To:"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /> 
                            <asp:Label ID="Label6" runat="server" Text="Trip Type:"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br /> 
                            <asp:Label ID="Label7" runat="server" Text="Ticket Price:"></asp:Label>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br /> 
                            <asp:Label ID="Label8" runat="server" Text="Total Price:"></asp:Label>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br />                           
                            
                  
                  <asp:Button ID="Button2" runat="server" Text="Add" onclick="Button2_Click1"  />
                        </form>
                 </div>
        </div>
        
        <div id="footer">
            <span style="margin:5px;float:right;font-size:8pt;font-family:Arial;color:#fff;">©2012 AirLanka. All Rights Reserved.</span>
        </div>
        
    </div>
    
</body>
</html>
