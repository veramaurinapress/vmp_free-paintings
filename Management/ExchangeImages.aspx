<%@ Page Title="All Image Archives" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="ExchangeImages.aspx.cs" Inherits="ImageArchives_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id" 
            Font-Size="Medium" Height="30px">
    </asp:DropDownList>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=veramaurinapressEntities2" 
        DefaultContainerName="veramaurinapressEntities2" EnableFlattening="False" 
        EntitySetName="ImageArchives" Select="it.[Id], it.[Name]">
    </asp:EntityDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" 
        DataSourceID="EntityDataSource2" ondatabound="ListView1_DataBound">
        
        
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        
        
        <ItemTemplate>
            <li style="">

                <asp:Image ID="Image1" runat="server" 
                    ImageUrl='<%# Eval("ImageUrl") %>'
                    ToolTip='<%# Eval("ToolTip") %>' />

                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul class="ItemContainer">
                <li runat="server" id="itemPlaceholder" />
            </ul>
           
        </LayoutTemplate>
        
    </asp:ListView>
        <asp:PlaceHolder ID="ImageArchiveDetails" runat="server">
            <h2>Image Archive Details</h2>
            Created by:
            <asp:Label ID="UserNameLabel" runat="server" Text=""></asp:Label>
        </asp:PlaceHolder>
    
    <br /><br />
        <asp:HyperLink ID="EditLink" runat="server" Text="Edit Image Archive" />

    <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
        AutoGenerateWhereClause="True" 
        ConnectionString="name=veramaurinapressEntities2" 
        DefaultContainerName="veramaurinapressEntities2" EnableFlattening="False" 
        EntitySetName="Images" Where="">
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ImageArchiveId" 
                PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

