<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="empinterviewpro.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 23px;
            color: #660033;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            font-style: italic;
            color: #00FF99;
        }
        .auto-style6 {
            color: #00FF99;
        }
        .auto-style7 {
            color: #66FF66;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
        .auto-style9 {
            color: #0066CC;
        }
        .auto-style10 {
            color: #0066CC;
        }
    </style>
</head>
<body>
    <div style="background-position: center center; background-image: url('pics/bg2.jpg'); background-repeat: repeat-x; background-attachment: scroll;">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong><em>Login Form</em></strong></td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="UserName" CssClass="auto-style5"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="usrtxt" runat="server"></asp:TextBox>
                    <br />
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style6"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="pastxt" runat="server"></asp:TextBox>
                    <br />
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>&nbsp;<span class="auto-style7"><em> Select User Type&nbsp;</em></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="logbtn" runat="server" OnClick="logbtn_Click" Text="Login" CssClass="auto-style10" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="sgnbtn" runat="server" Text="Sign Up" OnClick="sgnbtn_Click" CssClass="auto-style9" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
        </div>
</body>
</html>
