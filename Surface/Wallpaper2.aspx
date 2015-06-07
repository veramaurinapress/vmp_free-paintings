<%@ Page Title="Wallpaper" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Wallpaper2.aspx.cs" Inherits="Surface_Wallpaper2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#MainContent
{
    height:615px;
    background-image: url('../Images/Wallpaper/Wallpaper1.gif');
    background-repeat:repeat
}

#carousel
{
    margin-left: 45px;
}

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

        <div id="carousel">
        <ul id="slider1">

            <li><img src="../Images/Wallpaper/1.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/2.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/3.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/4.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/5.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/6.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/7.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/8.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/9.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/10.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/11.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/12.gif" height="555px" width="756px"  /><div class="clear"></div></li>
            <li><img src="../Images/Wallpaper/13.gif" height="555px" width="756px"  /><div class="clear"></div></li>
    </ul>
</div>

    <div class="thumbs">
            <a href=""><img src="../Images/Wallpaper/1t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/2t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/3t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/4t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/5t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/6t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/7t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/8t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/9t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/10t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/11t.gif" height="43px"  /></a>    
            <a href=""><img src="../Images/Wallpaper/12t.gif" height="43px"  /></a>
            <a href=""><img src="../Images/Wallpaper/13t.gif" height="43px"  /></a> 
</div>


<script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
<script src="../jquery.bxSlider.min.js" type="text/javascript"></script>
<script type="text/javascript">

    $(function () {
        // assign the slider to a variable
        var slider = $('#slider1').bxSlider({
            controls: false
        });

        // assign a click event to the external thumbnails
        $('.thumbs a').click(function () {
            var thumbIndex = $('.thumbs a').index(this);
            // call the "goToSlide" public function
            slider.goToSlide(thumbIndex);

            // remove all active classes
            $('.thumbs a').removeClass('pager-active');
            // assisgn "pager-active" to clicked thumb
            $(this).addClass('pager-active');
            // very important! you must kill the links default behavior
            return false;
        });

        // assign "pager-active" class to the first thumb
        $('.thumbs a:first').addClass('pager-active');
    });

</script>
</asp:Content>

