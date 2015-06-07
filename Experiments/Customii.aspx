<%@ Page Language="C#"%>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Web Parts Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:WebPartManager ID="Webpartmanager1" runat="server">
        </asp:WebPartManager>
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
                             ImageUrl="~/Images/Tuija.jpg" Width="150px" 
                             Title="Tuija at the Museum">
                            </asp:Image>
                          
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
                <td><!-- Blank for now -->
                </td>
            </tr>
        </table>        
    </form>
</body>
</html>