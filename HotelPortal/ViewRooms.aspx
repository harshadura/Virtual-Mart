<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewRooms.aspx.cs" Inherits="Hotel.ViewRooms" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>BANYAN Hotels & Resorts</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript">
// <!CDATA[

      

// ]]>
    </script>
</head>
<body>
<div id="wrapper">   
 
    <div id="header">
        <img style="width:100px;height:120px;margin-top: 20px;float:left;" src="images/BanyanTreeHotelsResortsLogo_2010_09_27.jpg" />
        <h1>Banyan Hotels & Resorts Colombo - Sri Lanka</h1><br />
        <div id="menu">
            <ul>
                <a href="Default.aspx">Home</a>
                <a href="ViewRooms.aspx">Room Details</a>
                <a href="ContactUs.aspx">Contact Us</a>
                <a href="AboutUs.aspx">About Us</a>
            </ul>
        </div>
        
    </div>
    
    <div id="middle">
    <h3 style="padding: 50px;">Room Details</h3>
    <div>
       <form runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="RoomID" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="RoomID" HeaderText="RoomID" ReadOnly="True" 
                    SortExpression="RoomID" />
                <asp:BoundField DataField="MaxPrice" HeaderText="MaxPrice" 
                    SortExpression="MaxPrice" />
                <asp:BoundField DataField="CostPrice" HeaderText="CostPrice" 
                    SortExpression="CostPrice" />
                <asp:BoundField DataField="NumberOfRooms" HeaderText="NumberOfRooms" 
                    SortExpression="NumberOfRooms" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="C:\Users\harshadura\Desktop\VirtualMart_DCBSD\VirtualMart_WebServices\HotelWS_Emil\App_Data\Hoteldb.mdb" 
            SelectCommand="SELECT [Type], [RoomID], [MaxPrice], [CostPrice], [NumberOfRooms] FROM [rooms]"></asp:AccessDataSource>
            </form>  
            </div>
    </div>
    
    <div class="clear"></div>
    
    <div id="footer">
        <span>© Copyright 2012 Banyan Hotels & Resorts. All rights reserved</span>
        <div style="float:right;">
        <span>No 2,Galle road,Colombo 03,Sri Lanka</span><br />
        <span>Tel: (94)112541010</span><br />
        <span>Fax: (94)112541072</span><br />
        <span>Email: hotels@banyan.net</span><br />
        <span>www.Banyan&resorts.com</span><br />
        </div>
    </div>
    
</div>
</body>
</html>