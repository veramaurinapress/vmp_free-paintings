<%@ Page Title="Archives" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Archives.aspx.cs" Inherits="Archives" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<asp:LoginView ID="LoginView2" runat="server">
<AnonymousTemplate>
<div class="PoemsButton">
    <a href="Login.aspx">
    <img src="Surface/Images/DressPattern.gif" width="200px" /><br />
    Login </a>or <a href="default.aspx">sign up</a><br />to participate and upload an image.
</div>
<div class="ProductText" align="right" >
This is a <br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/WhiteWalls/">
    <img src="Surface/Images/wallTexture.jpg" width="200px" /><br />
    White Walls
</a>
</div>
<div class="ProductText" align="right" >
product,<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/Couch.aspx">
    <img src="Surface/Images/couchesHybrid.gif" width="200px" /><br />
    Couch Paintings
</a>
</div>
<div class="ProductText" align="right" >
product page,<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/Exchange.aspx">
    <img src="Surface/Images/malraux2.jpg" width="200px" /><br /> 
    Exchange Images</a>
</div>

<div class="ProductText" align="right" >
but no <br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/Wallpaper.aspx">
    <img src="Surface/Images/malraux2.jpg" width="200px" /><br /> 
    Exchange Paintings</a>
</div>

<div class="ProductText" align="right" >
free<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/Arch">
    <img src="Surface/Images/stage_city.jpg" width="200px" height="200" /><br /> 
    Stage City</a>
</div>

<div class="ProductText" align="right" >
thought,<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/parallax_simulacrum.aspx">
    <img src="Surface/Images/malraux.jpg" width="200px" height="200" /><br /> 
    Theatricality : Parallax Simulacrum</a>
</div>

<div class="ProductText" align="right" >
art, <br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Text/Randomization/randomization.aspx">
    <img src="Surface/Images/outofplace.jpg" width="200px" height="200" /><br /> 
    Uncanny</a>
</div>

<div class="ProductText" align="right" >
&<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/BlackHole.aspx">
    <img src="Surface/Images/black_square_r.jpg" width="200px" height="200" /><br /> 
    Black Holes</a>
</div>

<div class="ProductText" align="right" >
8<br /><br /><br />
</div>

</AnonymousTemplate>

<LoggedInTemplate>
<div class="PoemsButton">
    <a href="NewImageArchive.aspx">
    <img src="Surface/Images/DressPattern.gif" width="200px" /><br />
    Upload an image.</a><br />
</div>
<div class="ProductText" align="right" >
manna is free,<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/WhiteWalls/">
    <img src="Surface/Images/wallTexture.jpg" width="200px" /><br />
    White Walls
</a>
</div>
<div class="ProductText" align="right" >
product,<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/Wallpaper2.aspx">
    <img src="Surface/Images/wallpaper.gif" width="200px" /><br />
    Wallpaper
</a>
</div>
<div class="ProductText" align="right" >
but nothing's<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/Exchange.aspx">
    <img src="Surface/Images/malraux2.jpg" width="200px" /><br /> 
    Exchange Images</a>
</div>

<div class="ProductText" align="right" >
but no <br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/Arch">
    <img src="Surface/Images/stage_city.jpg" width="200px" height="200" /><br /> 
    Stage City</a>
</div>

<div class="ProductText" align="right" >
or right, except<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/parallax_simulacrum.aspx">
    <img src="Surface/Images/malraux.jpg" width="200px" height="200" /><br /> 
    Theatricality : Parallax Simulacrum</a>
</div>

<div class="ProductText" align="right" >
art, <br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Text/Randomization/randomization.aspx">
    <img src="Surface/Images/outofplace.jpg" width="200px" height="200" /><br /> 
    Uncanny</a>
</div>

<div class="ProductText" align="right" >
&<br /><br /><br />
</div>

<hr />

<div class="PoemsButton">
    <a href="Surface/BlackHole.aspx">
    <img src="Surface/Images/black_square_r.jpg" width="200px" height="200" /><br /> 
    Black Holes</a>
</div>

<div class="ProductText" align="right" >
O<br /><br /><br />
</div>

</LoggedInTemplate>
</asp:LoginView>
</asp:Content>

