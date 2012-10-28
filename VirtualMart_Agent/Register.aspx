<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <br /><br />
    <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                  <asp:Label ID="Label4" runat="server" Text="Already have an Account? " Width="200px" ForeColor="Black"></asp:Label>
              <a href="main.aspx">Sign-In here!</a>
              <br />
            </td>
        </tr>
         <tr>
            <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
       <tr>
            <td>
                <asp:Label ID="Label83" runat="server" Text="User Name:" ForeColor="Black" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxUsername" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator73" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxUsername" ErrorMessage="Enter User Name.">User Name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Password:" ForeColor="Black" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxPassword" ErrorMessage="Enter password.">password</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="None"
                    ControlToValidate="TextBoxPassword" ErrorMessage="Password should be 4 to 15 letters & Space not allowed"
                    ValidationExpression="\S{4,15}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Retype Password:" ForeColor="Black"
                    Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxRetypePassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxRetypePassword" ErrorMessage="Retype password.">Retype password</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CVPassword" runat="server" Display="None" ControlToValidate="TextBoxRetypePassword"
                    ErrorMessage="Re-type Password doesn't match" ControlToCompare="TextBoxPassword"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="revPWDRange" runat="server" Display="None" ControlToValidate="TextBoxRetypePassword"
                    ErrorMessage="Password should be 4 to 15 letters & Space not allowed" ValidationExpression="\S{4,15}"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Email:" Width="200px" ForeColor="Black"></asp:Label>
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" Display="None"
                    ControlToValidate="TextBoxEmail" ErrorMessage="Enter a valid Email address.">Email</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator2" runat="server" ForeColor="Red" Display="None" ControlToValidate="TextBoxEmail"
                        ErrorMessage="Enter Correct E-Mail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Passport Number:" ForeColor="Black" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxPassport" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxPassport" ErrorMessage="Enter Passport.">Passport</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="City:" ForeColor="Black" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxCity" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxCity" ErrorMessage="Enter City.">City</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Contact:" ForeColor="Black"
                    Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxTP" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxTP" ErrorMessage="Enter TP.">TP</asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td height="20px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="ButtonMakeProfile" runat="server" Text="Register" OnClick="ButtonMakeProfile_Click"
                    Width="170px" Font-Bold="true" Font-Size="14pt" />
            </td>
        </tr>
    </table>
      <br /><br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Check entries:"
        ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
</asp:Content>
