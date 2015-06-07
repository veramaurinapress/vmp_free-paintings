<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="GiftForm.aspx.cs" Inherits="Surface_Pattabi_Gift_GiftForm" %>
<%@ Register src="~/Controls/GiftForm.ascx" tagname="GiftForm" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<div id="GiftFormBackImage">
<div id="GiftFormText" align="justify" >
Vera made a chapbook called <a href="../../Images/Sometimes_the_Machine.pdf" target="_blank">Sometimes the Machine</a>, by massaging Pattabi's apartment images, casual captions, and email correspondences into poems.
She printed 12 images from the chapbook on 12 x 12 inch inkjet watercolor paper. 
She will cut each print into smaller units.
She also cut many units from sheets of white watercolor paper with no prints on top.
She will paint and draw on top of every unit, and cut the units into even smaller units.
She will send the major parts to Pattabi, and the minor parts to people Pattabi chooses.
If you have a gift card from Pattabi, please fill out the form, and Vera will send you art from this series.     
</div>
<div id="GiftForm"><uc2:GiftForm ID="ContactForm2" runat="server" /></div>
</div>
</asp:Content>

