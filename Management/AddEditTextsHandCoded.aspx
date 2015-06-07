<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEditTextsHandCoded.aspx.cs" Inherits="Management_AddEditTextsHandCoded" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hand Coding Yeah, yeah.</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="TitleText" 
                    Text="<u>T</u>itle"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TitleText" runat="server" AccessKey="T" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" AssociatedControlID="SummaryText" 
                    Text="S<u>u</u>mmary"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="SummaryText" runat="server" AccessKey="U" TextMode="MultiLine" 
                    Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" AssociatedControlID="BodyText" 
                    Text="<u>B</u>ody"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="BodyText" runat="server" AccessKey="B" TextMode="MultiLine" 
                    Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" AssociatedControlID="FieldsList" 
                    Text="<u>F</u>ields"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="FieldsList" runat="server" AccessKey="G" 
                    DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id" 
                    onselectedindexchanged="GenreList_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                    ConnectionString="name=veramaurinapressEntities2" 
                    DefaultContainerName="veramaurinapressEntities2" EnableFlattening="False" 
                    EntitySetName="Fields">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" AssociatedControlID="Authorized" 
                    Text="Authorized"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="Authorized" runat="server" AccessKey="A" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" runat="server" AccessKey="S" Text="Save" 
                    onclick="SaveButton_Click" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
