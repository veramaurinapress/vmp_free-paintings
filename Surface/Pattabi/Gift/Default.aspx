<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Gift_Default" %>
<%@ Register src="../Controls/GiftForm.ascx" tagname="GiftForm" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

<uc1:GiftForm ID="GiftForm" runat="server" />

</asp:Content>

