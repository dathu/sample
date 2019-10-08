<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Index | Comodity</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<script language="JavaScript" type="text/JavaScript">
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
</script>
  <link href="cis.css" rel="stylesheet" type="text/css" />
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('images/aboutus_hov.jpg','images/aboutcis_hov.jpg','images/samples_hov.jpg','images/register_hover.jpg','images/tariff_hov.jpg','images/trading_hov.jpg','images/infosup_hov.jpg','images/contact_hov.jpg')">
<form id="form1" runat="server">
<table width="775" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/headbg.jpg">
        <tr> 
          <td height="160"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="77"><img src="images/spacer.gif" width="1" height="1"></td>
                <td width="215"><img src="images/commodity.jpg" width="215" height="77"></td>
                <td width="87"><img src="images/spacer.gif" width="1" height="1"></td>
                <td width="104"><img src="images/links.jpg" width="104" height="77"></td>
              </tr>
            </table>
              <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/LoginForm.aspx" Style="z-index: 100;
                  left: 135px; position: absolute; top: 424px" Font-Size="Medium">Login</asp:LinkButton>
          </td>
          <td width="322"><img src="images/grain_01.jpg" width="322" height="160"></td>
          <td width="14"><img src="images/spacer.gif" width="1" height="1"></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr valign="top"> 
                <td width="180" rowspan="2">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td><img src="images/spacer.gif" width="1" height="5"></td>
                    </tr>
                    <tr valign="top"> 
                      <td width="180" height="473" background="images/but_bg.jpg"><table width="165" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr> 
                            <td><img src="images/spacer.gif" width="1" height="15"></td>
                          </tr>
                          <tr> 
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td width="26"><img src="images/bullet.jpg" width="26" height="28"></td>
                                  <td><a href="AboutUS.aspx" onMouseOver="MM_swapImage('Image1','','images/aboutus_hov.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="images/aboutus.jpg" name="Image1" width="139" height="28" border="0" id="Image1"></a></td>
                                </tr>
                                <tr> 
                                  <td height="31" valign="bottom"><img src="images/bullet.jpg" width="26" height="28"></td>
                                  <td><a href="AboutCIS.aspx" onMouseOver="MM_swapImage('Image2','','images/aboutcis_hov.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="images/aboutcis.jpg" name="Image2" width="139" height="31" border="0" id="Image2"></a></td>
                                </tr>
                                <tr> 
                                  <td height="32" valign="bottom"><img src="images/bullet.jpg" width="26" height="28"></td>
                                  <td><a href="Samples.aspx" onMouseOver="MM_swapImage('Image3','','images/samples_hov.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="images/samples.jpg" name="Image3" width="139" height="32" border="0" id="Image3"></a></td>
                                </tr>
                                <tr> 
                                  <td height="31" valign="bottom"><img src="images/bullet.jpg" width="26" height="28"></td>
                                  <td><a href="CustomerReg.aspx" onMouseOver="MM_swapImage('Image4','','images/register_hover.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="images/register.jpg" name="Image4" width="139" height="31" border="0" id="Image4"></a></td>
                                </tr>
                                <tr> 
                                  <td height="32" valign="bottom"><img src="images/bullet.jpg" width="26" height="28"></td>
                                  <td><a href="Info_Supplier.aspx"  onMouseOver="MM_swapImage('Image7','','images/infosup_hov.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="images/infosup.jpg" name="Image7" width="139" height="32" border="0" id="Image7"></a></td>
                                </tr>
                                <tr> 
                                  <td height="31" valign="bottom"><img src="images/bullet.jpg" width="26" height="28"></td>
                                  <td><a href="Contactus.aspx" onMouseOver="MM_swapImage('Image8','','images/contact_hov.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="images/contactus.jpg" name="Image8" width="139" height="31" border="0" id="Image8"></a></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table> </td>
                    </tr>
                  </table>
                </td>
                <td width="259">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td><img src="images/spacer.gif" width="1" height="5"></td>
                    </tr>
                   
                    <tr> 
                      <td class="content01"><div align="justify"><span class="sidehead01"></span> In this age of Globalization information is power and the whole
                           world is running for a platform where one can meet the customer mind share and 
                           here is a platform that can outpour all needs for what so ever on Commodities. 
                           Good business is still sealed with a handshake especially on the Internet, with 
                           CIS which is pioneered virtual market place, which can make your business a real
                            business where in one, can proudly say that the agri-world is at their tips and the pricing now rests in their hands.</div></td>
                    </tr>
                    <%--<tr> 
                      <td height="20" > </td>
                    </tr>--%>
                    <%--<tr>
                      <td bgcolor="#D4D4D4" class="readmore"><img src="images/spacer.gif" width="1" height="2"></td>
                    </tr>--%>
                  </table>
                </td>
                <td width="322"><img src="images/grain_02.jpg" width="322" height="216"></td>
                <td width="14"><img src="images/spacer.gif" width="1" height="1"></td>
              </tr>
              <tr valign="top"> 
                <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr valign="top"> 
                      <td width="431" style="height: 143px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td><img src="images/spacer.gif" width="1" height="5"></td>
                          </tr>
                          
                          <tr> 
                            <td class="content01"><div align="justify"><span class="sidehead01">CIS 
                                </span> Commodity Intelligence System is a Portal providing as complete 
                                solution for the commodity class which envisage a very user friendly platform 
                                for all classes which are based on commodity transactions by providing a service for every one interested in picking up commodity prices and also for pursuing the trading on-line. It is a unique concept of networking all major national trading centers and market yards across the country providing regularly updated online information about commodity prices at any particular point of time. Icing on the cake is that this portal is an excellent end to end solution for trading on-line for all segments spanning Business to business, Business to Consumer, Farmer to business so that the farmers, traders, consumers 
                                can get best deal out of their commodity and reap more reasonable profits at all levels.</div></td>
                          </tr>
                          <%--<tr> 
                            <td height="20" class="readmore"> <div align="right"></div></td>
                          </tr>--%>
                        </table></td>
                      <td width="150" style="height: 143px"><table width="150" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td><div align="center"><img src="images/image01.jpg" style="width: 137px; height: 179px"></div></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><img src="images/spacer.gif" width="1" height="1"></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><img src="images/spacer.gif" width="1" height="5"></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr valign="top"> 
                            <td width="431"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td><img src="images/spacer.gif" width="1" height="5"></td>
                                </tr>
                                
                                <tr> 
                                  <td class="content01"><div align="justify"><span class="sidehead01">CIS 
                                      </span> The aim of the Commodity Intelligence System is to assist equitable
                                       distribution of business-matching supply and demand in minutes benefiting every 
                                       one in the trade and commodities transaction the opportunity to take control of the
                                        Concept as a useful tool to enter a all new paradigm away from their traditional 
                                        business modes for a prospective and reaping business avenues in Commodity
                                       platform thus economies according to their priorities and along a more sustainable path.</div></td>
                                </tr>
                                <%--<tr> 
                                  <td height="20" class="readmore"></td>
                                </tr>--%>
                              </table></td>
                            <td width="150"><table width="150" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td><div align="center"><img src="images/image01.jpg" style="width: 139px; height: 120px"></div></td>
                                </tr>
                              </table></td>
                          </tr>
                          <%--<tr> 
                            <td colspan="2"><img src="images/spacer.gif" width="1" height="1"></td>
                          </tr>--%>
                        </table></td>
                    </tr>
                  </table></td>
                <td><img src="images/spacer.gif" width="1" height="1"></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><img src="images/spacer.gif" width="1" height="5"></td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="42" background="images/footbg.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="30%" height="22" class="footer">&copy; 2008 Privacy | Legal </td>
                      <td class="footer"><a href="Home.aspx">
                           Home</a> | <a href="Aboutus.aspx">
                           AboutUS</a>  | <a href="AboutCIS.aspx">
                           About CIS </a> | <a href="Samples.aspx">
                           Samples </a>  | <a href="loginForm.aspx" >
                        Register </a> | <a href="loginForm.aspx" >
                        Infosupply </a> |  <a href="Contactus.aspx" >
                        Contact US </a></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
