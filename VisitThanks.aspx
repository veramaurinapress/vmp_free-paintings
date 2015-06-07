<%@ Page Title="Thanks for Visiting" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="VisitThanks.aspx.cs" Inherits="VisitThanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
    #MainContent
    {
        background-image:url('App_Themes/Monochrome/Images/home_image3.gif');
        background-repeat:repeat;
    }
       .style2
       {
           width: 85px;
       }
       .style4
       {
           width: 248px;
       }
       .style5
       {
           width: 153px;
       }
   </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
      <asp:LoginView ID="LoginView2" runat="server">
         <AnonymousTemplate>
<div class="FrontPageTextColorWhite">
Thanks for visiting.
</div>
   
 </AnonymousTemplate>

 <LoggedInTemplate>
 
 
 </LoggedInTemplate>
 

 </asp:LoginView>

</asp:Content>


