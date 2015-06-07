<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="People.aspx.cs" Inherits="Management_People" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    DataKeyNames="UserId" DataSourceID="SqlDataSource1" Height="50px" 
        Width="125px" AllowPaging="True">
    <Fields>
        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" 
            SortExpression="UserId" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [UserId], [Email] FROM [vw_aspnet_MembershipUsers]">
</asp:SqlDataSource>


</asp:Content>

