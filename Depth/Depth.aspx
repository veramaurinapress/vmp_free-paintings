<%@ Page Title="Depth" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Depth.aspx.cs" Inherits="Depth_Depth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<asp:LoginView ID="LoginView2" runat="server">

<AnonymousTemplate>
<div id="PoemsButton">
    <a href="EightWeeksOnline.aspx">
    <img src="Images/FreePoems.gif" /><br />
    Eight Weeks Online
</a>
</div>
<div id="ChapBooksButton">
    <a href="Chapbooks.aspx">
    <img src="Images/Chapbooks.gif" /><br /> 
    to download chapbooks</a> or <a href="../Login.aspx">sign in</a>
</div>

</AnonymousTemplate>

 <LoggedInTemplate>
<div id="PoemsButton">
    <a href="EightWeeksOnline.aspx">
    <img src="Images/FreePoems.gif" /><br />
    Eight Weeks Online
</a>
</div>
<div id="ChapBooksButton">
    <a href="Chapbooks.aspx" target="_blank">
<h1>Chapbooks</h1>  
</a>
</div>

 
 </LoggedInTemplate>
 

 </asp:LoginView>

</asp:Content>

