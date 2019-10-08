<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerReg.aspx.cs" Inherits="CustomerReg" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML><HEAD><TITLE>Index | Comodity</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<SCRIPT language=JavaScript type=text/JavaScript>
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</SCRIPT>
<LINK href="images/cis.css" type="text/css" rel="stylesheet">
<META content="MSHTML 6.00.2900.3199" name=GENERATOR></HEAD>
<BODY leftMargin="0" topMargin="0" 
onload="MM_preloadImages('images/aboutus_hov.jpg','images/aboutcis_hov.jpg','images/samples_hov.jpg','images/register_hover.jpg','images/tariff_hov.jpg','images/trading_hov.jpg','images/infosup_hov.jpg','images/contact_hov.jpg')" 
>
  <TABLE cellSpacing=0 cellPadding=0 width=775 align=center border=0>
  <TBODY>
  <TR>
    <TD style="background-image: url(images/bg.jpg); height: 144px;">
      <TABLE cellSpacing=0 cellPadding=0 width="100%" 
      background=images/headbg.jpg border=0>
        <TBODY>
        <TR>
          <TD width=224 height=125 style="background-image: url(images/headbg.jpg);">
            <TABLE cellSpacing=0 cellPadding=0 width="64%" border=0>
              <TBODY>
              <TR>
                <TD width=37 height=77><IMG height=1 
                  src="images/spacer.gif" width=1></TD>
                <TD width=243><IMG height=77 
                  src="images/commodity.jpg" 
            width=215></TD></TR></TBODY></TABLE></TD>
          <TD width=537 style="background-image: url(images/headbg.jpg);">&nbsp;</TD>
          <TD width=14><IMG height=1 src="images/spacer.gif" 
          width=1></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD><IMG height=5 src="images/spacer.gif" width=1></TD></TR>
        <TR>
          <TD style="height: 492px">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR vAlign=top>
                <TD width=180 background=images/but_bg.jpg 
                  height=473 style="background-image: url(images/but_bg.jpg)"><TABLE cellSpacing=0 cellPadding=0 width=165 
                  align=center border=0>
                    <TBODY>
                    <TR>
                      <TD style="background-image: url(images/but_bg.jpg); height: 15px"><IMG height=15 src="images/spacer.gif" 
                        width=1></TD></TR>
                    <TR>
                      <TD style="height: 266px; background-image: url(images/but_bg.jpg);">
                        <TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                          <TR>
                            <TD width=26><IMG height=28 
                              src="images/bullet.jpg" width=26></TD>
                            <TD><A 
                              onmouseover="MM_swapImage('Image1','','images/aboutus_hov.jpg',1)" 
                              onmouseout=MM_swapImgRestore() 
                              href="AboutUS.aspx"><IMG 
                              id=Image1 height=28 
                              src="images/aboutus.jpg" width=139 
                              border=0 name=Image1></A></TD></TR>
                          <TR>
                            <TD vAlign=bottom height=31><IMG height=28 
                              src="images/bullet.jpg" width=26></TD>
                            <TD><A 
                              onmouseover="MM_swapImage('Image2','','images/aboutcis_hov.jpg',1)" 
                              onmouseout=MM_swapImgRestore() 
                              href="AboutCIS.aspx"><IMG 
                              id=Image2 height=31 
                              src="images/aboutcis.jpg" width=139 
                              border=0 name=Image2></A></TD></TR>
                          <TR>
                            <TD vAlign=bottom height=32><IMG height=28 
                              src="images/bullet.jpg" width=26></TD>
                            <TD><A 
                              onmouseover="MM_swapImage('Image3','','images/samples_hov.jpg',1)" 
                              onmouseout=MM_swapImgRestore() 
                              href="Samples.aspx"><IMG 
                              id=Image3 height=32 
                              src="images/samples.jpg" width=139 
                              border=0 name=Image3></A></TD></TR>
                          <TR>
                            <TD vAlign=bottom height=31><IMG height=28 
                              src="images/bullet.jpg" width=26></TD>
                            <TD><A 
                              onmouseover="MM_swapImage('Image4','','images/register_hover.jpg',1)" 
                              onmouseout=MM_swapImgRestore() 
                              href="CustomerReg.aspx"><IMG 
                              id=Image4 height=31 
                              src="images/register.jpg" width=139 
                              border=0 name=Image4></A></TD></TR>
                         
                          <TR>
                            <TD vAlign=bottom height=32><IMG height=28 
                              src="images/bullet.jpg" width=26></TD>
                            <TD><A 
                              onmouseover="MM_swapImage('Image7','','images/infosup_hov.jpg',1)" 
                              onmouseout=MM_swapImgRestore() 
                              href="Info_Supplier.aspx"><IMG 
                              id=Image7 height=32 
                              src="images/infosup.jpg" width=139 
                              border=0 name=Image7></A></TD></TR>
                          <TR>
                            <TD vAlign=bottom height=31><IMG height=28 
                              src="images/bullet.jpg" width=26></TD>
                            <TD><A 
                              onmouseover="MM_swapImage('Image8','','images/contact_hov.jpg',1)" 
                              onmouseout=MM_swapImgRestore() 
                              href="Contactus.aspx"><IMG 
                              id=Image8 height=31 
                              src="images/contactus.jpg" width=139 
                              border=0 
                    name=Image8></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                <TD style="background-color: lemonchiffon; width: 558px;">&nbsp;
                  <form id="Form1" runat="server">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Maroon"
                        Height="19px" Style="z-index: 100; left: 453px; position: absolute; top: 171px"
                        Text="CUSTOMER   REGISTRATION" Width="224px" Font-Italic="False"></asp:Label>
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCustName"
                          ErrorMessage="Customer Name is required" Style="z-index: 101; left: 609px;
                          position: absolute; top: 221px" TabIndex="24">*</asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlCity"
                          ErrorMessage="City should not be empty" Style="z-index: 102; left: 874px; position: absolute;
                          top: 221px">*</asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress"
                          ErrorMessage="Address should not be empty" Style="z-index: 103; left: 609px;
                          position: absolute; top: 247px">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPincode"
                          ErrorMessage="Only 6 digits should be given for Pincode" Style="z-index: 104;
                          left: 609px; position: absolute; top: 274px" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCellPhone"
                          ErrorMessage="Only 10 digits should be given for CellPhone" Style="z-index: 105;
                          left: 609px; position: absolute; top: 302px" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail"
                          ErrorMessage="Email should be in this format (someone@microsoft.com)" Style="z-index: 106;
                          left: 610px; position: absolute; top: 329px" ValidationExpression=".*@.*\..*">*</asp:RegularExpressionValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtAge"
                          ErrorMessage="Only numbers should be given for Age" Style="z-index: 107; left: 874px;
                          position: absolute; top: 299px" ValidationExpression="\d{1,2}">*</asp:RegularExpressionValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtPhone"
                          ErrorMessage="Phone No should be Numbers" Style="z-index: 108; left: 875px;
                          position: absolute; top: 249px" ValidationExpression="\d{1,20}">*</asp:RegularExpressionValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtFax"
                          ErrorMessage="Phone nos should be Numbers" Height="8px" Style="z-index: 109;
                          left: 875px; position: absolute; top: 275px" ValidationExpression="\d{1,20}" Width="3px">*</asp:RegularExpressionValidator>
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                      <asp:Calendar ID="Calendar3" runat="server" Style="z-index: 110; left: 326px; position: absolute;
                          top: 444px" OnSelectionChanged="Calendar3_SelectionChanged" Visible="False"></asp:Calendar>
                      <asp:Label ID="Label3" runat="server" ForeColor="Navy" Height="19px" Style="z-index: 111;
                          left: 323px; position: absolute; top: 220px" Text="Customer  Name*" Width="125px" TabIndex="23"></asp:Label>
                      <asp:TextBox ID="txtCustName" runat="server" Style="z-index: 112; left: 458px; position: absolute;
                          top: 217px" MaxLength="24"></asp:TextBox>
                      <asp:Label ID="Label4" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 113;
                          left: 325px; position: absolute; top: 249px" Text="Address*" Width="78px"></asp:Label>
                      <asp:Label ID="Label5" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 114;
                          left: 324px; position: absolute; top: 303px" Text="CellPhone" Width="88px"></asp:Label>
                      <asp:Label ID="Label6" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 115;
                          left: 325px; position: absolute; top: 277px" Text="Pincode" Width="77px"></asp:Label>
                      <asp:TextBox ID="txtPincode" runat="server" Style="z-index: 116; left: 457px; position: absolute;
                          top: 271px" TabIndex="2" MaxLength="6"></asp:TextBox>
                      <asp:TextBox ID="txtCellPhone" runat="server" Style="z-index: 117; left: 457px; position: absolute;
                          top: 298px" TabIndex="3" MaxLength="10"></asp:TextBox>
                      <asp:Label ID="Label7" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 118;
                          left: 323px; position: absolute; top: 328px" Text="Email" Width="88px"></asp:Label>
                      <asp:Label ID="Label8" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 119;
                          left: 323px; position: absolute; top: 355px" Text="Date of Birth" Width="88px"></asp:Label>
                      <asp:Label ID="Label9" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 120;
                          left: 323px; position: absolute; top: 409px" Text="Date of Joining" Width="97px"></asp:Label>
                      &nbsp;
                      <asp:TextBox ID="txtEmail" runat="server" Style="z-index: 121; left: 457px; position: absolute;
                          top: 325px" TabIndex="4" MaxLength="25"></asp:TextBox>
                      <asp:Label ID="Label11" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 122;
                          left: 631px; position: absolute; top: 220px" Text="City*" Width="78px"></asp:Label>
                      <asp:Label ID="Label12" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 123;
                          left: 631px; position: absolute; top: 248px" Text="Phone" Width="76px"></asp:Label>
                      <asp:Label ID="Label13" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 124;
                          left: 631px; position: absolute; top: 275px" Text="Fax" Width="77px"></asp:Label>
                      &nbsp;
                      <asp:TextBox ID="txtPhone" runat="server" Height="22px" Style="z-index: 125; left: 732px;
                          position: absolute; top: 245px" Width="134px" TabIndex="11" MaxLength="10"></asp:TextBox>
                      <asp:Label ID="Label14" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 126;
                          left: 630px; position: absolute; top: 300px" Text="Age" Width="80px"></asp:Label>
                      <asp:TextBox ID="txtAge" runat="server" Height="22px" Style="z-index: 127; left: 731px;
                          position: absolute; top: 298px" Width="134px" TabIndex="13" MaxLength="2"></asp:TextBox>
                      <asp:TextBox ID="txtFax" runat="server" Height="22px" Style="z-index: 128; left: 731px;
                          position: absolute; top: 272px" Width="134px" TabIndex="12" MaxLength="10"></asp:TextBox>
                      <asp:Label ID="Label15" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 129;
                          left: 631px; position: absolute; top: 327px" Text="Qualification" Width="77px"></asp:Label>
                      <asp:TextBox ID="txtQualification" runat="server" Height="22px" Style="z-index: 130; left: 730px;
                          position: absolute; top: 324px" Width="134px" TabIndex="14" MaxLength="15"></asp:TextBox>
                      <asp:Label ID="Label16" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 131;
                          left: 324px; position: absolute; top: 383px" Text="Mother Tongue" Width="97px"></asp:Label>
                      <asp:TextBox ID="txtDOB" runat="server" Style="z-index: 132; left: 456px; position: absolute;
                          top: 352px" Width="120px" Height="22px" TabIndex="6"></asp:TextBox>
                      <asp:TextBox ID="txtMotherTongue" runat="server" Style="z-index: 133; left: 455px; position: absolute;
                          top: 379px" TabIndex="7" MaxLength="12"></asp:TextBox>
                      <asp:TextBox ID="txtJoinDate" runat="server" Style="z-index: 134; left: 454px; position: absolute;
                          top: 405px" Height="22px" Width="121px" TabIndex="9"></asp:TextBox>
                      <asp:TextBox ID="txtAddress" runat="server" Style="z-index: 135; left: 458px; position: absolute;
                          top: 244px" Width="146px" TabIndex="1" MaxLength="48"></asp:TextBox>
                      <asp:Label ID="Label2" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 136;
                          left: 631px; position: absolute; top: 426px" Text="Password*" Width="78px"></asp:Label>
                      <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 137; left: 728px; position: absolute;
                          top: 424px" Width="133px" TextMode="Password" TabIndex="17" MaxLength="8">*</asp:TextBox>
                      &nbsp;
                      &nbsp;&nbsp;
                      <asp:Label ID="Label17" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 138;
                          left: 631px; position: absolute; top: 354px" Text="Occupation" Width="77px"></asp:Label>
                      <asp:TextBox ID="txtOccupation" runat="server" Height="22px" Style="z-index: 139; left: 729px;
                          position: absolute; top: 351px" Width="134px" TabIndex="15" MaxLength="15"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:Label ID="Label19" runat="server" ForeColor="Navy" Height="23px" Style="z-index: 140;
                          left: 631px; position: absolute; top: 380px" Text="Business Category" Width="77px"></asp:Label>
                      &nbsp; &nbsp; &nbsp;
                      <asp:Button ID="btnCal1" runat="server"  Style="z-index: 141;
                          left: 575px; position: absolute; top: 351px" Text=".." Width="27px" Font-Bold="True" OnClick="btnCal1_Click" TabIndex="5" CausesValidation="False" />
                      &nbsp;
                      <asp:Button ID="btnCal2" runat="server"  Style="z-index: 142;
                          left: 574px; position: absolute; top: 403px" Text=".." Width="27px" Font-Bold="True" OnClick="btnCal2_Click" Height="26px" TabIndex="8" CausesValidation="False" />
                      <asp:DropDownList ID="ddlCity" runat="server" Style="z-index: 143; left: 732px; position: absolute;
                          top: 218px" Width="134px" TabIndex="10">
                          <asp:ListItem>Select</asp:ListItem>
                      </asp:DropDownList><asp:DropDownList ID="ddlBizCategory" runat="server" Style="z-index: 144; left: 729px; position: absolute;
                          top: 385px" Width="134px" TabIndex="16">
                          <asp:ListItem>Select</asp:ListItem>
                          <asp:ListItem>Broker</asp:ListItem>
                          <asp:ListItem>Wholesaler</asp:ListItem>
                          <asp:ListItem>Retailer</asp:ListItem>
                          <asp:ListItem>Customer</asp:ListItem>
                      </asp:DropDownList>
                      <asp:Button ID="btnSave" runat="server" Style="z-index: 145; left: 647px; position: absolute;
                          top: 509px" Text="Register" OnClick="btnSave_Click" TabIndex="19" />
                      <asp:Button ID="btnClear" runat="server" Style="z-index: 146; left: 726px; position: absolute;
                          top: 509px" Text="Clear" OnClick="btnClear_Click" Width="51px" TabIndex="20" />
                      <asp:Calendar ID="Calendar4" runat="server" OnSelectionChanged="Calendar4_SelectionChanged"
                          Style="z-index: 147; left: 326px; position: absolute; top: 444px" Visible="False" TabIndex="22">
                      </asp:Calendar>
                      &nbsp;&nbsp;
                      <asp:Label ID="Label10" runat="server" ForeColor="Navy" Height="15px" Style="z-index: 148;
                          left: 630px; position: absolute; top: 455px" Text="Confirm Password*" Width="78px"></asp:Label>
                      <asp:TextBox ID="txtCnfrmPwd" runat="server" Style="z-index: 149; left: 727px; position: absolute;
                          top: 461px" Width="133px" TextMode="Password" TabIndex="18" MaxLength="8">*</asp:TextBox>
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                          ControlToValidate="txtCnfrmPwd" ErrorMessage="Password and Confirm Password should be same"
                          Style="z-index: 150; left: 867px; position: absolute; top: 461px">*</asp:CompareValidator>
                      <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Errors Occured:"
                          Height="1px" Style="z-index: 151; left: 594px; position: absolute; top: 544px"
                          Width="269px" TabIndex="21" />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                          ErrorMessage="Password Should not be Empty" Style="z-index: 155; left: 868px;
                          position: absolute; top: 425px" Width="10px">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtQualification"
                          ErrorMessage="Qualification should be letters" Style="z-index: 153; left: 872px;
                          position: absolute; top: 328px" ValidationExpression="\S[a-z A-Z]*" Width="4px">*</asp:RegularExpressionValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtOccupation"
                          ErrorMessage="Occupation should be letters" Style="z-index: 154; left: 871px;
                          position: absolute; top: 356px" ValidationExpression="\S[a-z A-Z]*" Width="4px">*</asp:RegularExpressionValidator>
                </form>
                </TD>
                <TD style="width: 14px"><IMG height=1 src="images/spacer.gif" 
                  width=1></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD style="background-image: url(images/but_bg.jpg); height: 5px"><IMG height=5 src="images/spacer.gif" width=1></TD></TR>
        <TR>
          <TD style="background-image: url(images/but_bg.jpg)">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD background=images/footbg.jpg height=42 style="background-image: url(images/but_bg.jpg)">
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD class=footer width="30%" height=22 style="background-image: url(images/but_bg.jpg)">© 2008 Privacy | Legal </TD>
                      <TD class=footer style="background-image: url(images/but_bg.jpg)"><a href="Home.aspx"> Home </a> |Aboutus | About CIS | Samples | <a href="CustomerReg.aspx">
                        Register </a> | <a href="Info_Supplier.aspx">Infosupply </a>| 
                    Contact</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>



