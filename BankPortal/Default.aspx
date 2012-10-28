<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 2px;
    }
    .style2
    {
        height: 100px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <br />
      <br />
      
            <center>
      
          
            <asp:Login ID="ctlLogin" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8"
                    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                    Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="OnAuthenticate" Width="300px"
                    Height="140px">
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <TextBoxStyle Font-Size="1.2em" Width="200px" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                        Font-Names="Verdana" Font-Size="1.2em" ForeColor="#284775" />
                </asp:Login>
                
      
                </center>
      <br />
      <br />
    
</asp:Content>

