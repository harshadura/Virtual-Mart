<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<%@ Register Src="~/Controls/Header.ascx" TagName="Header" TagPrefix="Uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
      <br />
    <div class="full_width">
    
   <br />
    <div>
            <asp:Login ID="ctlLogin" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE"
                    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                    Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="OnAuthenticate" Width="300px"
                    Height="140px">
                    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="1.0em" 
                        ForeColor="White" />
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <TextBoxStyle Font-Size="1.2em" Width="200px" />
                    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
                        Font-Names="Verdana" Font-Size="1.2em" ForeColor="#284E98" />
                </asp:Login>
              <br />  
      Don't you have an Account yet ? <a href="Register.aspx">Sign-Up here!</a>
  
               
      </div>
      
        <br /> <br /><br /> <br />
     
        </div>
            
            </center>
</asp:Content>


