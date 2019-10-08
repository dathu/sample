<%@ Page Language="C#" AutoEventWireup="true" CodeFile="msReports.aspx.cs" Inherits="msReports" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
</head>
<body style="background-color:LemonChiffon">
    <form id="form2" runat="server">
     &nbsp;
                       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True"
                           ForeColor="Maroon" Height="21px" Style="z-index: 100; left: 401px; position: absolute;
                           top: 32px" TabIndex="6" Text="CIS          REPORTS" Width="124px"></asp:Label>
        &nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminHome.aspx" Style="z-index: 101;
            left: 47px; position: absolute; top: 31px">My Page</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 102;
            left: 313px; position: absolute; top: 295px" Text="Show Report" />
        <asp:Label ID="Label2" runat="server" Style="z-index: 103; left: 230px; position: absolute;
            top: 139px" Text="Select Report"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 105; left: 351px;
            position: absolute; top: 138px" Width="228px">
            <asp:ListItem Value="Customer List">Customer List</asp:ListItem>
            <asp:ListItem>Commodity List</asp:ListItem>
            <asp:ListItem>Location List</asp:ListItem>
            <asp:ListItem>InfoSupplier List</asp:ListItem>
            <asp:ListItem>Market List</asp:ListItem>
        </asp:DropDownList>
    

    </form>
</body>
</html>
