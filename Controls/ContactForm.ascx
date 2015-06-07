<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<% if (false) { %>
    <script src="../Scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
<% } %>

<style type="text/css">
  .style1
  {
    width: 60%;
    color:White;
    font-size:small;
    font-weight:bold;
  }
    .style2
    {
        height: 83px;
    }
    .style3
    {
        width: 179px;
    }
    .style4
    {
        width: 33px;
    }
    
    hr 
    {
        border-top: 4px dashed White;
    }
    
    #MainContent
    {
        background-image:url('../App_Themes/Monochrome/Images/Operators.gif');
        background-repeat: repeat;
    }
</style>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<asp:Label ID="Message" style="color:gray;font-weight:bold;font-size:25px;" runat="server" Text="Message Sent" CssClass="Attention" Visible="False" />
<p runat="server" id="MessageSentPara" visible="false" style="color:white;font-weight:bold;font-size:75px; text-align:justify;">Thank you for contacting Vera Maurina Press.  We will respond shortly.</p>
<div id="TableWrapper">
<table class="style1" runat="server" id="FormTable">
  <tr>
    <td colspan="3" class="style2">
      Touch us
        <hr />
    </td>
  </tr>
  <tr>
    <td class="style3">
        Name:</td>
    <td>
      <asp:TextBox ID="Name" runat="server" CssClass="InputBox" 
            ToolTip="Enter your index" Height="25px" Font-Size="Medium"></asp:TextBox>
    </td>
    <td class="style4">
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
    </td>
  </tr>
  <tr>
    <td class="style3">
      E-mail address
    </td>
    <td>
      <asp:TextBox ID="EmailAddress" runat="server" CssClass="InputBox" 
            ToolTip="Enter your third personality's address" Height="25px" 
            Font-Size="Medium"></asp:TextBox>
    </td>
    <td class="style4">
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an e-mail address">*</asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </td>
  </tr>
  <tr>
    <td class="style3">
        E-mail address again:</td>
    <td>
     <asp:TextBox ID="ConfirmEmailAddress" runat="server" CssClass="InputBox" 
            ToolTip="Confirm your e-mail address" Height="25px" Font-Size="Medium"></asp:TextBox>
    </td>
    <td class="style4">
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm your schizophenic address">*</asp:RequiredFieldValidator>
      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Retype the e-mail address">*</asp:CompareValidator>
    </td>
  </tr>

  <tr>
    <td class="style3">
        Body:
    </td>
    <td>
     <asp:TextBox ID="Comments" runat="server" Height="250px" TextMode="MultiLine" 
            CssClass="InputBox" ToolTip="What's up?" Font-Size="Medium"></asp:TextBox>
    </td>
    <td class="style4">
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
    </td>
  </tr>
  <tr>
    <td class="style3">
    </td>
    <td align="right">
      <asp:Button ID="SendButton" runat="server" Text="Send" onclick="SendButton_Click" CssClass="AllButtons"  />
    </td>
    <td class="style4">
    </td>
  </tr>
  <tr>
    <td colspan="3">
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors before you press the Send button:" />
    </td>
  </tr>
</table>
</div>


</ContentTemplate>
</asp:UpdatePanel>

<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
<ProgressTemplate>
<div class="PleaseWait" style="color:red;font-weight:bold;font-size:75px;">Please Wait...</div>
</ProgressTemplate>
</asp:UpdateProgress>

<script src="../Scripts/jquery.updnWatermark.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $.updnWatermark.attachAll({ cssClass: 'Watermark' });
        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });

    function pageLoad() {
        $('.Attention').animate({ width: '600px' }, 3000).animate({ width: '400px' }, 3000).fadeOut('slow');
    }
</script>
