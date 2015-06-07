<%@ Page Title="Profile | Vera Maurina Press" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="VmpProfile.aspx.cs" Inherits="VmpProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style1
        {
            width: 400px;
            color:#CCCCCC;
            font-size:small;
            font-weight:bold;
            padding:10px;
            
        }
        .style2
        {
            width: 100px;
            color:#CCC;
    font-size:small;
    font-weight:bold;
    
        }
    .style3
    {
        width: 168px;
        color:Gray;
    font-size:small;
    font-weight:bold;
    padding-bottom:15px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div id="ProfilePics">
    <table class="style1">
    <tr>
<td align="left" colspan="3" class="style2">
  We send you free art.<hr style="border-top: 4px dashed White;" /></td>
                        </tr>
        <tr>
            <td class="style2">
                First Name:</td>
            <td class="style3">
                <asp:TextBox ID="FirstName" runat="server" Height="25px" Font-Size="Medium">First Name</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    Display="Dynamic" ErrorMessage="First name is required" 
                    ControlToValidate="FirstName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Last Name:</td>
            <td class="style3">
                <asp:TextBox ID="LastName" runat="server" Height="25px" Font-Size="Medium">Last Name</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    Display="Dynamic" ErrorMessage="Last name is required" 
                    ControlToValidate="LastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Street 1:</td>
            <td class="style3">
                <asp:TextBox ID="Street1" runat="server" Width="194px" Height="25px" 
                    Font-Size="Medium">Street</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    Display="Dynamic" ErrorMessage="Street is required" 
                    ControlToValidate="Street1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Street 2:</td>
            <td class="style3">
                <asp:TextBox ID="Street2" runat="server" Width="194px" Height="25px" 
                    Font-Size="Medium">Apt # | Suite #</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                City:</td>
            <td class="style3">
                <asp:TextBox ID="City" runat="server" Height="25px" Font-Size="Medium">City</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    Display="Dynamic" ErrorMessage="City is required" ControlToValidate="City"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                State:</td>
            <td class="style3">
                <asp:TextBox ID="State" runat="server" Height="25px" Font-Size="Medium">State</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    Display="Dynamic" ErrorMessage="State is required" 
                    ControlToValidate="State"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Zip:</td>
            <td class="style3">
                <asp:TextBox ID="ZipCode" runat="server" Height="25px" Font-Size="Medium">Zip Code</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    Display="Dynamic" ErrorMessage="Zip code is required" 
                    ControlToValidate="ZipCode"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" align="right">
                <asp:Button ID="SaveButton" runat="server" Text="Save Profile" 
                    onclick="SaveButton_Click" PostBackUrl="~/NewImageArchive.aspx" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </asp:Content>

