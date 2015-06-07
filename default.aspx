<%@ Page Title="Vera Maurina Press" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
    #MainContent
    {
        background-image:url('App_Themes/Monochrome/Images/home_image3.gif');
        background-repeat:repeat;
    }
       .style2
       {
           width: 85px;
       }
       .style4
       {
           width: 248px;
       }
       .style5
       {
           width: 153px;
       }
   </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
      <asp:LoginView ID="LoginView2" runat="server">
         <AnonymousTemplate>
<div class="AboutText" align="justify">
<div class="FrontPageTextColorWhite">
1. sign-up 2. upload an image about motion or location 3. we integrate your input with paintings & drawings 4. we send you a free work of art incorporating your image 
</div>
</div>
   
      


   
        <div id="SignUpForm">
      
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        onsendingmail="CreateUserWizard1_SendingMail" BackColor="White" 
        Font-Size="Small" Font-Bold="True" ForeColor="Gray" 
                CreateUserButtonImageUrl="~/Archives.aspx" 
                ContinueDestinationPageUrl="~/Archives.aspx" 
                CreateUserButtonText="Create" CssClass="AllButtons">
        
        <MailDefinition BodyFileName="~/App_Data/SignUpConfirmation.txt" 
            Subject="Your New Account with Vera Maurina Press" From="painter@veramaurinapress.org">
        </MailDefinition>
        
        <TextBoxStyle Height="25px" />
        
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" >
                <ContentTemplate>
                    <table class="style4">
                        <tr>
                            <td align="left" colspan="2">
                                Sign Up for a New Account<hr /></td>
                        </tr>
                        <tr>
                            <td align="left" class="style2">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="UserName" runat="server" Height="25px" Font-Size="Medium"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                    ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style2">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="Password" runat="server" Height="25px" TextMode="Password" 
                                    Font-Size="Medium"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                    ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style2">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="ConfirmPassword" runat="server" Height="25px" 
                                    TextMode="Password" Font-Size="Medium"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Confirm Password is required." 
                                    ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style2">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="Email" runat="server" Height="25px" Font-Size="Medium"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="The Password and Confirmation Password must match." 
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server">
                <ContentTemplate>
                    <table style="color:Gray;background-color:White;font-size:100%;font-weight:bold;">
                  
                        <tr>
                            <td>
                                <h3>Continue to upload an image.</h3></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                    CommandName="Continue" Text="Continue" CssClass="AllButtons" ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
   </div>
 </AnonymousTemplate>

 <LoggedInTemplate>
 
 <div class="FrontPageTextColorWhite">
Nothingness.</h1>
</div>
 
 </LoggedInTemplate>
 

 </asp:LoginView>

</asp:Content>

