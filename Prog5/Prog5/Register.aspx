<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Prog5.Register" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <style type="text/css">
        .auto-style2 {
            text-align: center;
            color: #0000FF;
            text-decoration: underline;
        }
        .auto-style3 {
            text-align: center;
            color: #000000;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 187px;
            text-align: center;
        }
        .auto-style6 {
            height: 22px;
            width: 187px;
            text-align: center;
        }
        .auto-style7 {
            height: 22px;
            text-align: right;
            width: 462px;
        }
        .auto-style8 {
            text-align: right;
            width: 462px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1 class="auto-style2">Web Protocols, Technologies and Applications </h1>
    <h2 class="auto-style3">Derek Schultz</h2>

<div>
	
    <table align="center" class="nav-justified">
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <em>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                </em>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <em>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                </em>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <em>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Does Not Match!" ForeColor="Red"></asp:CompareValidator>
                </em>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
	
</div>
    </div>
    </form>
</body>
</html>
