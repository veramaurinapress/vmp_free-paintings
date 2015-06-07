<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="randomization1.aspx.cs" Inherits="Text_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div id="wrapper">
        <div id="columns">
        	<div class="column chuck"><h2></h2></div>
            <div class="column chuck"><h2></h2></div>
            <div class="column chuck"><h2></h2></div>
        </div>
    </div>

        <script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
    <script type="text/javascript" src="js/jquery.randomContent.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.chuck').randomContent({ xmlPath: "on-painting.xml", nodeName: "fact" });
        });
    </script>
    
    <link href="theme/style.css" rel="stylesheet" type="text/css" media="all" />
</asp:Content>

