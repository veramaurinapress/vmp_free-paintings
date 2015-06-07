<%@ Page Title="Login to Vera Maurina Press" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 87px;
        }
        #ContentGrid
        {
            background-repeat:repeat;
            background-image: url('App_Themes/Monochrome/Images/Grid_Door.png');
            height: 449px;
        }
        
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
<div id="ContentGrid">

         <asp:Login ID="Login1" runat="server" Font-Bold="True" Font-Size="Small" 
             ForeColor="Gray" Height="25px" BackColor="White" 
             DestinationPageUrl="~/Archives.aspx">
                <InstructionTextStyle HorizontalAlign="Left" />
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="left" colspan="2">
                                            Log In<hr /> </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server" Height="25px" Font-Size="Medium"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" 
                                                Font-Size="Medium" Height="25px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                                ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                                ValidationGroup="Login1" CssClass="AllButtons" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
       
            <div class="hidden">
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" 
                onsendingmail="PasswordRecovery1_SendingMail" Font-Bold="True" 
                    ForeColor="Gray" BackColor="White" Font-Size="Small" Width="227px">
                <InstructionTextStyle HorizontalAlign="Left" Wrap="False" />
                <MailDefinition Subject="Your New Password for Vera Maurina Press"></MailDefinition>
                <UserNameTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="left" colspan="2">
                                            Send your password via email<hr /><br /></td>
                                    </tr>
                                   
                                    <tr>
                                        <td align="left" class="style1">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server" Height="25px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                ToolTip="User Name is required." ValidationGroup="ctl02$PasswordRecovery1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Send" 
                                                ValidationGroup="ctl02$PasswordRecovery1" CssClass="AllButtons" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </UserNameTemplate>
            </asp:PasswordRecovery>
          </div>
 <i class="show"></i>
      <script type="text/javascript">
          $(document).ready(function () {
              $(".show").css("cursor", "pointer");
              $("hidden").css("cursor", "pointer");
              $(".hidden").hide();
              $(".show").html("<h3>  Recover password</h3>");

              $(".show").click(function () {
                  if (this.className.indexOf('clicked') != -1) {
                      
                  }
                  else {
                      $(this).addClass('clicked')
                      $(this).prev().slideDown(500);
                      $(this).html("");
                  }
              });
          });
</script>

 </div>
</asp:Content>