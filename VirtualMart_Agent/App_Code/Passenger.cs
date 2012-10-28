using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Passenger
{
    public Passenger()
	{

	}

    private String passengerId;
    public String PassengerId
    {
        get { return passengerId; }
        set { passengerId = value; }
    }

    private String passportNum;
    public String PassportNum
    {
        get { return passportNum; }
        set { passportNum = value; }
    }

    private String bankAcc;
    public String BankAcc
    {
        get { return bankAcc; }
        set { bankAcc = value; }
    }
   
    private String hotelType;
    public String HotelType
    {
        get { return hotelType; }
        set { hotelType = value; }
    }

    private String hotelCheckIn;
    public String HotelCheckIn
    {
        get { return hotelCheckIn; }
        set { hotelCheckIn = value; }
    }

    private String hotelCheckout;
    public String HotelCheckout
    {
        get { return hotelCheckout; }
        set { hotelCheckout = value; }
    }

    private String hotelRooms;
    public String HotelRooms
    {
        get { return hotelRooms; }
        set { hotelRooms = value; }
    }

    private String hotelRoomID;
    public String HotelRoomID
    {
        get { return hotelRoomID; }
        set { hotelRoomID = value; }
    }

    private String hotelRoomPrice;
    public String HotelRoomPrice
    {
        get { return hotelRoomPrice; }
        set { hotelRoomPrice = value; }
    }

    private String airFrom;
    public String AirFrom
    {
        get { return airFrom; }
        set { airFrom = value; }
    }

    private String airTo;
    public String AirTo
    {
        get { return airTo; }
        set { airTo = value; }
    }

    private String airTripType;
    public String AirTripType
    {
        get { return airTripType; }
        set { airTripType = value; }
    }

    private String airRouteID;
    public String AirRouteID
    {
        get { return airRouteID; }
        set { airRouteID = value; }
    }
    
    private String airDate;
    public String AirDate
    {
        get { return airDate; }
        set { airDate = value; }
    }

    private String airType;
    public String AirType
    {
        get { return airType; }
        set { airType = value; }
    }

    private String airTicketPrice;
    public String AirTicketPrice
    {
        get { return airTicketPrice; }
        set { airTicketPrice = value; }
    }

    private String airSeats;
    public String AirSeats
    {
        get { return airSeats; }
        set { airSeats = value; }
    }

}

