﻿<%@ Page Title="Vera Maurina Press | Management | Text" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Text.aspx.cs" Inherits="Management_Text" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" 
        DataValueField="Id">
        <asp:ListItem Value="">Make a selection</asp:ListItem>
    </asp:DropDownList>
    <a href="AddEditText.aspx">AddEditText.aspx</a><asp:GridView ID="GridView1" 
    runat="server" AutoGenerateColumns="False" DataKeyNames="Id" 
    DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" 
                DataNavigateUrlFormatString="AddEditTextsHandCoded.aspx?Id={0}" DataTextField="Title" 
                HeaderText="Title" />
            <asp:TemplateField HeaderText="Authorized" SortExpression="Authorized">
     
                <ItemTemplate>
                    <asp:Label ID="AuthorizedLabel" runat="server" Text='<%# GetBooleanText(Eval("Authorized")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CreateDateTime" DataFormatString="{0:g}" 
                HeaderText="CreateDateTime" SortExpression="CreateDateTime" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <a href="AddEditTextsHandCoded.aspx">Insert New Text</a><br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:veramaurinapressConnectionString2 %>" 
        DeleteCommand="DELETE FROM [Text] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Text] ([Title], [Authorized], [CreateDateTime]) VALUES (@Title, @Authorized, @CreateDateTime)" 
        SelectCommand="SELECT [Id], [Title], [Authorized], [CreateDateTime] FROM [Text] WHERE ([FieldId] = @FieldId)" 
        UpdateCommand="UPDATE [Text] SET [Title] = @Title, [Authorized] = @Authorized, [CreateDateTime] = @CreateDateTime WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="FieldId" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:veramaurinapressConnectionString2 %>" 
        SelectCommand="SELECT [Id], [Name] FROM [Fields] ORDER BY [SortOrder]">
    </asp:SqlDataSource>
</asp:Content>

