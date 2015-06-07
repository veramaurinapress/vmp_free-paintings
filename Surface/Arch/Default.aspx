<%@ Page Title="Stage City" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Arch_i_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div align="center">
       <ajaxToolkit:Seadragon ID="SeaDragon" sourceURL="dzc_output.xml" Height="480px" Width="840px" runat="server">
         </ajaxToolkit:Seadragon>
         </div>
</asp:Content>

