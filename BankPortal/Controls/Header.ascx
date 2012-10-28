<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Controls_Header" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:ScriptManager ID="ScriptManager1" runat="server" />
<table cellpadding="1" cellspacing="1" width="100%">
    <tr>
        <td>
        </td>
        <td width="40%" align="right">
<%--            <asp:LinkButton ID="Login" runat="server" Text="Login |" OnClick="Login_Click" CssClass="BlueText"
                CausesValidation="false"></asp:LinkButton>--%>
                
               Hello,&nbsp;<asp:Label ID="loggedUser" runat="server" Text="Sir/Madam"></asp:Label>
                
&nbsp;|&nbsp;<asp:LinkButton ID="Logout" runat="server" Text="Logout" OnClick="Logout_Click"
               CausesValidation="false"></asp:LinkButton>
          &nbsp;|&nbsp;  <asp:LinkButton ID="SignUp" runat="server" Text="SignUp" OnClick="SignUp_Click"
                CausesValidation="false"></asp:LinkButton>
        </td>
    </tr>
</table>
