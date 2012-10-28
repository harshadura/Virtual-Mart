<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .style1
        {
            width: 112px;
        }
        .style2
        {
            width: 238px;
        }
        .style3
        {
            width: 125px;
        }
        #Select1
        {
            width: 116px;
        }
        .style4
        {
            width: 112px;
            height: 20px;
        }
        .style5
        {
            width: 125px;
            height: 20px;
        }
        .style6
        {
            width: 238px;
            height: 20px;
        }
        .style7
        {
            height: 20px;
        }
        #btnPrint
        {
            width: 129px;
        }
        #Button1
        {
            width: 145px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <h3 style="color:blue;">Summary of Services</h3>
                
    <br/>
    <table style="width:100%;">
    <tr>
        <td class="style1">
            Air
            From</td>
        <td class="style3">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2">
            To&nbsp;</td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style3">
            &nbsp;
         </td>
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2">
            &nbsp;</td>
        <td>
           &nbsp;
        </td>
    </tr>
    <tr>
        <td class="style1">
            Air
            Date</td>
        <td class="style3">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
         </td>
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2">
            TICKET PRICE</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style3">
            &nbsp;
        </td>
         </td>
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2">
            &nbsp;</td>
        <td>
           &nbsp;
        </td>
    </tr>
    <tr>
        <td class="style4">
            Trip Type&nbsp; </td>
        <td class="style5">
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
         </td>
            <td class="style4">
            </td>
      
        <td class="style6">
            Seat Type</td>
        <td class="style7">
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
             </td>
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            Route ID</td>
        <td class="style3">
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
         </td>
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2">
            Passsengers</td>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style3">
            &nbsp;
        </td>
         </td>
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2">
            &nbsp;</td>
        <td>
           &nbsp;
            </td>
    </tr>
     <tr>
        <td class="style1">
            Hotel Rooms</td>
        <td class="style3">
            &nbsp;<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        </td>
         </td>
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2">
            Room Type</td>
        <td>
            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    
     <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style3">
            &nbsp;
        </td>
         </td>
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2">
            &nbsp;</td>
        <td>
           &nbsp;
        </td>
    </tr>
    
     <tr>
        <td class="style1">
            Hotel Arrival</td>
        <td class="style3">
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        </td>
            <td class="style1">
            &nbsp;</td>
      
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
            <td class="style1">
            &nbsp;</td>
      
        <td class="style2"> &nbsp;
         </td>
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
            <td class="style1">
             &nbsp;  <input type="button"  value="Print the Bill" id="Button1" title="Print the Bill" onclick="window.print();" /></td>
      
        <td class="style2">
              &nbsp;</td>
        <td>
           &nbsp;
        </td>
    </tr>
</table>
<br/><br/><br/>

</asp:Content>


