<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hotel._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
        <div id="left">
            <form runat="server">
                <table style="margin-bottom: 0px;">
                    <tr>
                        <td>
                            <label>Arrival Date:</label>                            
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>   
                        </td>
                    </tr>    
                        <td>
                            <label>Departure Date:</label>                            
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>    
                        <td>
                            <label>Room Type:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>BB</asp:ListItem>
                                <asp:ListItem>FB</asp:ListItem>
                                <asp:ListItem>HB</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>    
                        <td>
                            <label>Adults:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList> 
                        </td>
                    </tr>    
                        <td>
                            <label>Children:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        
                    </tr>
                    <tr><td><label>Number Of Rooms</label></td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            <asp:Button ID="Button1" runat="server" Text="Check Availability" 
                    onclick="Button1_Click" />
            </form>
        </div>
        
        <div id=right>
            <img width="474" style="float:right;margin: 20px 40px 0 0;" src="images/banyan.jpg" />
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
