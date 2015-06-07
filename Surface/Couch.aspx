<%@ Page Title="Couch" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Couch.aspx.cs" Inherits="Brackets_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">
#MainContent
{
    background-color:Gray;
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

        <div id="carousel3">
        <ul id="slider7">
            <li><img src="../Images/Couch/4.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/5.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/6.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/7.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/8.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/9.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/10.gif" height="408px"  /><div class="clear"></div></li>

            <li><img src="../Images/Couch/11.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/12.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/13.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/14.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/15.gif" height="408px"  /><div class="clear"></div></li>

            <li><img src="../Images/Couch/16.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/17.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/18.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/19.gif" height="408px"  /><div class="clear"></div></li>
            <li><img src="../Images/Couch/20.gif" height="408px"  /><div class="clear"></div></li>


		</ul>
        </div>
        <img src="../Images/Couch/mies_couch.gif"  />

        <br /><br />  
        <script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
<script src="../jquery.bxSlider.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#slider7').bxSlider({
            ticker: true,
            tickerSpeed: 200,
			tickerHover: true,
            
        });
    });
</script>

      
</asp:Content>

