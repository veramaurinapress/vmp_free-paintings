
<%@ Page Title="Create New Archive" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="NewImageArchive.aspx.cs" Inherits="NewImageArchive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#MainContent
{
    height:633px;
    background-image: url('../App_Themes/Monochrome/Images/messydesk.jpg');
    background-repeat:repeat
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">


    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Id" DataSourceID="EntityDataSource1" DefaultMode="Insert" 
        Height="50px" Width="240px" BackColor="White" BorderColor="White" 
        BorderStyle="None" BorderWidth="0px" CellPadding="4" ForeColor="Gray" 
        Font-Bold="True" GridLines="None" 
        >
        <CommandRowStyle HorizontalAlign="Center" />
        <EditRowStyle BackColor="white" Font-Bold="True" ForeColor="Gray" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                SortExpression="Id" InsertVisible="false" />
            <asp:BoundField DataField="Name" HeaderText="Name:" SortExpression="Name" >
            <ControlStyle Height="25px" />
            </asp:BoundField>
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" CancelText="" 
                InsertText="Create" ShowCancelButton="False" 
                ItemStyle-HorizontalAlign="Right" >
<ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:CommandField>
        </Fields>
        <FooterStyle BackColor="white" ForeColor="gray" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Gray" />
        <HeaderTemplate>
            Start by naming your image archive:<hr 
    style="border-top: 4px dashed Gray;" />
        </HeaderTemplate>
        <InsertRowStyle Width="120px" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    </asp:DetailsView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=veramaurinapressEntities2" 
        DefaultContainerName="veramaurinapressEntities2" EnableFlattening="False" 
        EnableInsert="True" EntitySetName="ImageArchives" 
        oninserted="EntityDataSource1_Inserted" 
        oninserting="EntityDataSource1_Inserting">
    </asp:EntityDataSource>


</asp:Content>

