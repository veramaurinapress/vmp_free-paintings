<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Custom.master" AutoEventWireup="true" CodeFile="Custom.aspx.cs" Inherits="Experiments_Custom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

      
        <table cellpadding="5" border="1">
            <tr>
                <td colspan="3">
                    <h1>Bill Evjen's Web Page</h1>
                    <asp:WebPartZone ID="WebPartZone1" runat="server" 
                     LayoutOrientation="Horizontal">
                        <ZoneTemplate>
                            <asp:Label ID="Label1" runat="server" Text="Label" 
                             Title="Welcome to my web page!">
                             Welcome to the page!
                            </asp:Label>
                        </ZoneTemplate>
                    </asp:WebPartZone>
                </td>
            </tr>
            <tr valign="top">
                <td>
                    <asp:WebPartZone ID="WebPartZone2" Runat="server">
                        <ZoneTemplate>
                            <asp:Image ID="Image1" Runat="server" 
                             ImageUrl="~/Images/ExchangeImages.gif" Width="150px" 
                             Title="Tuija at the Museum">
                            </asp:Image>
                        
                            </uc1:DailyLinks>
                        </ZoneTemplate>
                    </asp:WebPartZone>
                </td>
                <td>
                    <asp:WebPartZone ID="WebPartZone3" runat="server">
                        <ZoneTemplate>
                            <asp:Calendar ID="Calendar1" runat="server"
                             Title="Calendar">
                            </asp:Calendar>
                        </ZoneTemplate>
                    </asp:WebPartZone>
                </td>
                <td>What's up dude!?
                </td>
            </tr>
        </table>        
</asp:Content>

