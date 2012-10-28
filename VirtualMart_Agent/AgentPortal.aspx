<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AgentPortal.aspx.cs" Inherits="AgentPortal" %>

<%@ Register Src="~/Controls/Header.ascx" TagName="Header" TagPrefix="Uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
      <br />
    <div class="full_width">
    
  <h3 style="color:blue;">Hello, Welcome to Virtual Mart Agent Portal!</h3>
       <br /> <br />
            	<div class="section_w280 margin_r_30 w280_bg">
                
                	<h3 style="color:blue;">Airline Services</h3>
                     <br />
                    <p>
                        <img src="images/hotel.jpg" alt="image" width="499" 
                            height="167" style="align: center" />
                        <br />     
                     <a href="airline_reservation.aspx">Airline Booking Services</a><br />
                     <a href="CancelAirBook.aspx">Cancel Airline Booking</a><br />
                     <a href="CheckAirBookings.aspx">Check Airline Reservations</a><br />
                    
                    </p>
                    
              </div>
                
                <div class="section_w280 margin_r_30 w280_bg">
                 <br />
                	<h3 style="color:blue;">Hotel Services</h3>
                     <br />
                     <p>
                    <img src="images/airline.jpg" alt="image" width="499" height="167" />
                     <br />
                     <a href="hotel_reservation.aspx">Hotel Booking Services</a><br />
                     <a href="CancelHotelBook.aspx">Cancel Hotel Booking</a><br />
                     <a href="CheckHotelBookings.aspx">Check Hotel Reservations</a><br />
                     
                  </p>
              </div>
                <br /><br /><br />
                <div class="cleaner"></div>
            
            </div> 
            
            </center>
</asp:Content>


