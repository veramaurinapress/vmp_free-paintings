<%@ Page Title="Vera Maurina Press | Management | Genres" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Fields.aspx.cs" Inherits="Management_Fields" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Label ID="ErrorMessage" CssClass="ErrorMessage" EnableViewState="false" runat="server"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" 
    DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
        onrowdatabound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit">
                    </asp:LinkButton>
                &nbsp;
                <asp:LinkButton ID="DeleteLink" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete">
                    </asp:LinkButton>
            </ItemTemplate>
            <ItemStyle Width="100px" />
        </asp:TemplateField>
        <asp:BoundField DataField="Name" HeaderText="Name" 
        SortExpression="Name" ItemStyle-Width="200px" >
<ItemStyle Width="200px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="SortOrder" HeaderText="Sort Order" 
            SortExpression="SortOrder" />
    </Columns>
</asp:GridView>
<asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" 
    Height="50px" Width="125px" BackColor="White">
    <Fields>
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<br />

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:veramaurinapressConnectionString2 %>" 
    DeleteCommand="DELETE FROM [Fields] WHERE [Id] = @Id" 
    InsertCommand="INSERT INTO [Fields] ([Name], [SortOrder]) VALUES (@Name, @SortOrder)" 
    ProviderName="<%$ ConnectionStrings:veramaurinapressConnectionString2.ProviderName %>" 
    SelectCommand="SELECT Fields.Id, Fields.Name, Fields.SortOrder, 
                   COUNT(Text.Id) AS NumberOfTexts FROM Fields LEFT OUTER JOIN Text
                   ON Fields.Id= Text.FieldId GROUP By Fields.Id, Fields.Name, Fields.SortOrder" 
    
        UpdateCommand="UPDATE [Fields] SET [Name] = @Name, [SortOrder] = @SortOrder WHERE [Id] = @Id" 
        ondeleted="SqlDataSource1_Deleted">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SortOrder" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SortOrder" Type="Int32" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

<script type="text/javascript">
    $(function () {
        $('.GridView tr:odd:not(.GridViewPagerStyle)').
        addClass('GridViewAlternatingRowStyle');
    });
</script>

</asp:Content>

