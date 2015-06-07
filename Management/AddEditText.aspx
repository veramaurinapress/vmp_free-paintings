<%@ Page Title="Vera Maurina Press | Management | Insert & Update Texts" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditText.aspx.cs" Inherits="Management_AddEditText" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BackColor="White" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
        DefaultMode="Insert" Height="50px" Width="125px" 
        oniteminserted="DetailsView1_ItemInserted" 
        oniteminserting="DetailsView1_ItemInserting" 
        onitemupdated="DetailsView1_ItemUpdated" 
        onitemupdating="DetailsView1_ItemUpdating" 
        onpageindexchanging="DetailsView1_PageIndexChanging">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
            
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator Id="reqVal1" ErrorMessage="Enter a Title" ControlToValidate="TextBox1"
                        runat="server" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator Id="reqVal2" ErrorMessage="Enter a Title" ControlToValidate="TextBox1"
                        runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:CheckBoxField DataField="Authorized" HeaderText="Authorized" 
                SortExpression="Authorized" />
            <asp:TemplateField HeaderText="FieldId" SortExpression="FieldId">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="FieldsDataSource" DataTextField="Name" DataValueField="Id" 
                        SelectedValue='<%# Bind("FieldId") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="FieldsDataSource" DataTextField="Name" DataValueField="Id" 
                        SelectedValue='<%# Bind("FieldId") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("FieldId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Body" SortExpression="Body">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Body") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Body") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Body") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Summary" SortExpression="Summary">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator Id="reqVal3" ErrorMessage="Enter a summary" ControlToValidate="TextBox2"
                        runat="server" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="500" Height="100" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator Id="reqVal4" ErrorMessage="Enter a summary" ControlToValidate="TextBox2"
                        runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Summary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" 
                SortExpression="UpdateDateTime" Visible="False" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="FieldsDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:veramaurinapressConnectionString2 %>" 
        SelectCommand="SELECT [Id], [Name] FROM [Fields] ORDER BY [SortOrder]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:veramaurinapressConnectionString2 %>" 
        DeleteCommand="DELETE FROM [Text] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Text] ([Title], [Authorized], [FieldId], [Body], [Summary], [UpdateDateTime]) VALUES (@Title, @Authorized, @FieldId, @Body, @Summary, @UpdateDateTime)" 
        SelectCommand="SELECT [Id], [Title], [Authorized], [FieldId], [Body], [Summary], [UpdateDateTime] FROM [Text] WHERE ([Id] = @Id)" 
        UpdateCommand="UPDATE [Text] SET [Title] = @Title, [Authorized] = @Authorized, [FieldId] = @FieldId, [Body] = @Body, [Summary] = @Summary, [UpdateDateTime] = @UpdateDateTime WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="FieldId" Type="Int32" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="FieldId" Type="Int32" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

