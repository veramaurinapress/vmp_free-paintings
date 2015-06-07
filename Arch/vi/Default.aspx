<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Drawings_Default" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
     <ajaxToolKit:ToolKitScriptManager ID="manager" runat="server" CombineScripts="false" />
       <ajaxToolkit:Seadragon ID="SeaDragon" sourceURL="dzc_output.xml" Height="400px" Width="1000px" runat="server">
         </ajaxToolkit:Seadragon>
    
    </div>
    </form>
</body>
</html>
