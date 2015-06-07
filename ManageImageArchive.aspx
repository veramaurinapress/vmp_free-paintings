<%@ Page Title="Manage Image Archive" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="ManageImageArchive.aspx.cs" Inherits="ManageImageArchive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
#MainContent
{
    height:633px;
    background-image: url('../App_Themes/Monochrome/Images/filing.jpg');
    background-repeat:repeat
}
        .style1
        {
            width: 400px;
            color:White;
            font-size:small;
            font-weight:bold;
            padding:10px;   
        }
        .style2
        {
            width: 150px;
            float:left;
        }
        
        .style3
        {
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" 
        DataKeyNames="Id" InsertItemPosition="LastItem" 
        oniteminserting="ListView1_ItemInserting" 
       >
       
        <InsertItemTemplate>
            <table class="style1">

                <tr>
                <td align="left" colspan="3" class="style3">
                Upload Images.<hr style="border-top: 4px dashed White;" /></td>
                </tr>
                
                <tr>
                <td class="style2">
                Image Title:
                </td>
                
                <td class="style3">
                <asp:TextBox Height="25px" ID="ToolTipTextBox" runat="server" Text='<%# Bind("ToolTip") %>' Width="225px" />
                </td>
                
                <td> 
                <asp:RequiredFieldValidator ID="reqTooltip" ControlToValidate="ToolTipTextBox" runat="server" ErrorMessage="Enter a title." />
                </td>
                </tr>

                <tr>
                <td class="style2">
                Image Description:
                </td>
                
                <td class="style3">
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' TextMode="MultiLine" Height="175px" Width="225px" />
                </td>

                <td>
                  <asp:RequiredFieldValidator ID="reqDesc" ControlToValidate="DescriptionTextBox" runat="server" ErrorMessage="Enter a description." />
                </td>
                </tr>

                <tr>
                <td class="style2">
                Upload Image:
                </td>

                <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="225px" />
                </td>
                </tr>

                <tr>
                <td>
                </td>

                <td align="right">
                <asp:CustomValidator ID="cusValImage" runat="server" ErrorMessage="Select a valid .jpg, .jpeg, .png, or .gif file" />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
                </td>
                </tr>

            </table>
           
        </InsertItemTemplate>
        
        <ItemTemplate>
            <li>
                <span class="DTMaxWidth">Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />
                </span>
                <span class="DTMaxWidth">Title:
                <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Eval("ToolTip") %>' />
                <br />
                </span>
                <asp:Image ID="ImageUrl" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' />

                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" CausesValidation="false" />
            </li>
        </ItemTemplate>

        <LayoutTemplate>
            <ul class="ItemContainer">
                <li runat="server" id="itemPlaceholder" class="DTMaxWidth" />
            </ul>
        </LayoutTemplate>
        
    </asp:ListView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=veramaurinapressEntities2" 
        DefaultContainerName="veramaurinapressEntities2" EnableDelete="True" 
        EnableFlattening="False" EnableInsert="True" EntitySetName="Images" 
        EntityTypeFilter="" Select="" 
    Where="it.ImageArchive.Id = @imageArchiveId" 
    oninserting="EntityDataSource1_Inserting">
        <WhereParameters>
            <asp:QueryStringParameter Name="ImageArchiveId" 
                QueryStringField="ImageArchiveId" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
    <asp:Label ID="Messageii" style="color:gray;font-weight:bold;font-size:75px;text-align:right;" runat="server" Text="Thank you for exchanging an image." Visible="False" />


</asp:Content>

