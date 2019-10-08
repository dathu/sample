<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="LoginForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body style="background-color:LemonChiffon">
    <form id="form2" runat="server">
     &nbsp;
                       <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True"
                           ForeColor="Maroon" Height="21px" Style="z-index: 100; left: 344px; position: absolute;
                           top: 38px" TabIndex="6" Text="REGISTERED USERS " Width="277px"></asp:Label>
                       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="False"
                           ForeColor="Maroon" Height="21px" Style="z-index: 101; left: 525px; position: absolute;
                           top: 38px" TabIndex="6" Text="LOGIN FORM" Width="178px"></asp:Label>
                       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                       <asp:Label ID="Label4" runat="server" ForeColor="Maroon" Style="z-index: 102; left: 400px;
                           position: absolute; top: 132px" TabIndex="5" Text="User  Name *"></asp:Label>
                       <asp:Label ID="Label7" runat="server" ForeColor="Maroon" Style="z-index: 103; left: 121px;
                           position: absolute; top: 134px" TabIndex="5" Text="New User"></asp:Label>
                       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="txtUserName" runat="server" Style="z-index: 104; left: 510px; position: absolute;
                        top: 126px" Height="18px" Width="131px" TabIndex="1"></asp:TextBox>
                       <asp:Label ID="Label2" runat="server" ForeColor="Maroon" Style="z-index: 105; left: 402px;
                           position: absolute; top: 162px" TabIndex="5" Text="Password *"></asp:Label>
                       <asp:TextBox ID="txtPassword" runat="server" Height="18px" Style="z-index: 106; left: 510px;
                           position: absolute; top: 157px" TabIndex="1" Width="131px" TextMode="Password">*</asp:TextBox>
                       &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                       &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                       &nbsp;&nbsp;
                       <asp:Button ID="btnSubmit" runat="server" Style="z-index: 108; left: 513px; position: absolute;
                           top: 236px" Text="Login" OnClick="btnSubmit_Click" TabIndex="2" />
                       <asp:Button ID="btnClear" runat="server" Style="z-index: 109; left: 582px; position: absolute;
                           top: 237px" Text="Clear" OnClick="btnClear_Click" TabIndex="3" />
        &nbsp;
                       <asp:Label ID="Label5" runat="server" ForeColor="Maroon" Style="z-index: 110; left: 405px;
                           position: absolute; top: 194px" TabIndex="5" Text="Type *"></asp:Label>
        &nbsp;&nbsp;
                       <asp:DropDownList ID="ddlStatus" runat="server" Height="18px" Style="z-index: 111;
                           left: 512px; position: absolute; top: 192px" Width="136px">
                           <asp:ListItem>Customer</asp:ListItem>
                           <asp:ListItem>InfoSupplier</asp:ListItem>
                           <asp:ListItem>Administrator</asp:ListItem>
                       </asp:DropDownList>
        &nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerReg.aspx" Style="z-index: 116;
            left: 194px; position: absolute; top: 134px">Sign Up</asp:HyperLink>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
            ErrorMessage="User Name Should be given" Style="z-index: 113; left: 660px; position: absolute;
            top: 129px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
            ErrorMessage="Password should be given" Style="z-index: 114; left: 659px; position: absolute;
            top: 161px">*</asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Style="z-index: 115;
            left: 310px; position: absolute; top: 301px" Width="348px" />
   
    </form>
</body>
</html>





