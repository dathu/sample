<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchMinPrice.aspx.cs" Inherits="SearchMinPrice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <TITLE> Minimum Price Search </TITLE>
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
    <TD style="background-image: url(images/bg.jpg); height: 144px; width: 776px;">
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
          <TD width=537 style="background-image: url(images/headbg.jpg);">&nbsp;
             
          </TD>
          <TD width=14><IMG height=1 src="images/spacer.gif" 
          width=1></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD style="width: 776px; height: 573px;">
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD><IMG height=5 src="images/spacer.gif" width=1></TD></TR>
        <TR>
          <TD style="height: 492px">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR vAlign=top>
                <TD width=180 background=images/but_bg.jpg style="background-image: url(images/but_bg.jpg); height: 480px;"><TABLE cellSpacing=0 cellPadding=0 width=165 
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
                              href="file:///C:/Documents%20and%20Settings/admin/Desktop/CIS/cis%20html/innerpage.htm#"><IMG 
                              id=Image1 height=28 
                              src="images/aboutus.jpg" width=139 
                              border=0 name=Image1></A></TD></TR>
                          <TR>
                            <TD vAlign=bottom height=31><IMG height=28 
                              src="images/bullet.jpg" width=26></TD>
                            <TD><A 
                              onmouseover="MM_swapImage('Image2','','images/aboutcis_hov.jpg',1)" 
                              onmouseout=MM_swapImgRestore() 
                              href="file:///C:/Documents%20and%20Settings/admin/Desktop/CIS/cis%20html/innerpage.htm#"><IMG 
                              id=Image2 height=31 
                              src="images/aboutcis.jpg" width=139 
                              border=0 name=Image2></A></TD></TR>
                          <TR>
                            <TD vAlign=bottom height=32><IMG height=28 
                              src="images/bullet.jpg" width=26></TD>
                            <TD><A 
                              onmouseover="MM_swapImage('Image3','','images/samples_hov.jpg',1)" 
                              onmouseout=MM_swapImgRestore() 
                              href="file:///C:/Documents%20and%20Settings/admin/Desktop/CIS/cis%20html/innerpage.htm#"><IMG 
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
                              href="file:///C:/Documents%20and%20Settings/admin/Desktop/CIS/cis%20html/innerpage.htm#"><IMG 
                              id=Image8 height=31 
                              src="images/contactus.jpg" width=139 
                              border=0 
                    name=Image8></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                <TD style="background-color: lemonchiffon; width: 581px; height: 480px;">&nbsp;
                  <form id="Form1" runat="server">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Maroon"
                        Height="19px" Style="z-index: 100; left: 426px; position: absolute; top: 154px"
                        Text="Price Search" Width="124px" Font-Italic="False"></asp:Label>
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      <br />
                      <br />
                      <br />
                      <br />
                      <br />
                    <asp:Panel ID="Panel1" runat="server" Height="64px" Style="z-index: 101; left: 322px;
        position: absolute; top: 211px" Width="551px">
        <table style="z-index: 100; left: -2px; position: absolute; top: -24px">
            <tr>
                <td style="width: 1047px; height: 29px">
                    <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 0px; position: absolute;
                        top: 0px" Text="Category ID *"></asp:Label>
                </td>
                <td style="width: 1271px; height: 29px">
                    <asp:DropDownList ID="Ddlcat" runat="server" Style="z-index: 100; left: 110px; position: absolute;
                        top: 1px" Width="120px" OnSelectedIndexChanged="Ddlcat_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td style="width: 101px; height: 29px">
                </td>
                <td style="width: 1082px; height: 29px">
                    <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 268px; position: absolute;
                        top: 36px" Text="Grade"></asp:Label>
                </td>
                <td style="width: 1687px; height: 29px">
                </td>
                <td style="width: 100px; height: 29px">
                </td>
            </tr>
            <tr>
                <td style="width: 1047px; height: 24px">
                    <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 5px; position: absolute;
                        top: 35px" Text="Type ID"></asp:Label>
                </td>
                <td style="width: 1271px; height: 24px">
                    <asp:DropDownList ID="Ddlname" runat="server" Style="z-index: 100; left: 380px; position: absolute;
                        top: 6px" Width="152px" OnSelectedIndexChanged="Ddlname_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Ddlname"
                        ErrorMessage="Name Should not be  Empty" Style="z-index: 103; left: 98px; position: absolute;
                        top: 70px" Width="224px"></asp:RequiredFieldValidator>
                    <asp:DropDownList ID="Ddltype" runat="server" Style="z-index: 102; left: 113px; position: absolute;
                        top: 37px" Width="115px" OnSelectedIndexChanged="Ddltype_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td style="width: 101px; height: 24px">
                </td>
                <td style="width: 1082px; height: 24px">
                    <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 266px; position: absolute;
                        top: 4px" Text="Name ID *" Width="84px"></asp:Label>
                </td>
                <td style="width: 1687px; height: 24px">
                    <asp:DropDownList ID="Ddlgrade" runat="server" Style="z-index: 100; left: 382px;
                        position: absolute; top: 38px" Width="145px">
                    </asp:DropDownList>
                </td>
                <td style="width: 100px; height: 24px">
                </td>
            </tr>
        </table>
    </asp:Panel>
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                      
                       <table style="z-index: 102; left: 327px; position: absolute; top: 298px">
                  <tr>
                      <td style="width: 53px; height: 26px">
                          <asp:Label ID="Label10" runat="server" Style="z-index: 100; left: 8px; position: absolute;
                              top: 6px" Text="Date *"></asp:Label>
                      </td>
                      <td style="width: 118px; height: 26px">
                          <asp:TextBox ID="txtdate" runat="server" Style="z-index: 100; left: 62px; position: absolute;
                              top: 0px" Width="106px"></asp:TextBox>
                      </td>
                      <td style="width: 39px; height: 26px">
                          <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 185px; position: absolute;
                              top: 3px" Text="CAl" Width="31px" OnClick="Button1_Click" />
                      </td>
                  </tr>
              </table>
                      <asp:Calendar ID="Calendar1" runat="server" Style="z-index: 102; left: 628px; position: absolute;
                          top: 252px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 103;
                          left: 566px; position: absolute; top: 302px" Text="Show Price" />
                      &nbsp;
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerHome.aspx" Style="z-index: 105;
                          left: 293px; position: absolute; top: 153px">My Page</asp:HyperLink>
                      <table style="z-index: 103; left: 319px; position: absolute; top: 415px">
                          <tr>
                              <td style="width: 92px">
                                  <asp:Label ID="Lblheading" runat="server" ForeColor="Red" Style="z-index: 100; left: 1px;
                                      position: absolute; top: -29px" Width="421px"></asp:Label>
                              </td>
                              <td style="width: 323px">
                                  <asp:Label ID="Lblresult" runat="server" ForeColor="Red" Style="z-index: 100; left: 8px;
                                      position: absolute; top: 4px" Width="491px"></asp:Label>
                              </td>
                          </tr>
                      </table>
                </form>
                </TD>
                <TD style="height: 480px; width: 14px;"><IMG height=1 src="images/spacer.gif" 
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
                        Register </a> | <a href="Info_Supplier.aspx">  Infosupply </a> | Contact</td></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
   
</BODY></HTML>

