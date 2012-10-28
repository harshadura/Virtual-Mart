<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
     <br/>
    <h2 style="color:blue;">Contact Us</h2>
    <br/>
    
    <table style="width:100%;">
          <tr>
            <td class="style1">
                Address</td>
            <td class="style2">
              No12, Sayuru sewana, Colombo7
            </td>
        </tr>
          <tr>
         <td class="style1">
                Telephone: </td>
            <td class="style2">
               0712217611
                </tr>
        <tr>
            <td>FAX</td>
             <td>01127282222  </td>
        </tr>
    </table>
     <br/><br/>
</asp:Content>


