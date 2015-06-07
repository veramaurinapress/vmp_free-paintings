<%@ Page Title="Chapbooks" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Chapbooks.aspx.cs" Inherits="Depth_Chapbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

<asp:LoginView ID="LoginView2" runat="server">
<AnonymousTemplate>

</AnonymousTemplate>

<LoggedInTemplate>

<div class="PoemsButton">
    <a href="Images/Evelyn.pdf" target="_blank">
    <img src="Images/FreePoems.gif" width="200px" /><br />
    Download
</a>
</div>

<div class="PoemText" align="right" >
Evelyn<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Images/Versions_and_Forms.pdf" target="_blank">
    <img src="Images/FreePoemsii.gif" width="200px" /><br /> 
    Download</a><br />
</div>

<div class="PoemText" align="right" >
Versions and Forms<br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Images/Sometimes_the_Machine.pdf" target="_blank">
    <img src="Images/tiger.jpg" width="200px" /><br /> 
    Download</a><br />
</div>

<div class="PoemText" align="right" >
Sometimes the Machine<br /><br /><br />
</div>
<br />
</LoggedInTemplate>
</asp:LoginView>
</asp:Content>

