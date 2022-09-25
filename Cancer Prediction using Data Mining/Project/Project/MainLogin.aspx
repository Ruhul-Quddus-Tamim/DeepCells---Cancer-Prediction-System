<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainLogin.aspx.cs" Inherits="MainLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 125px;
            width: 33%;
        }
        .auto-style3 {
            height: 25px;
            width: 33%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />

    <table style="border: 1px solid #C0C0C0" width="80%">
        <tr>
            <td height="250" align="center" class="auto-style2">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Admin.jpg" PostBackUrl="~/AdminLogin.aspx" Width="170px" />
            </td>
            
            <td width="33.35%" align="center">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/User.png" PostBackUrl="~/UserLogin.aspx" Width="180px" />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style3">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="#333333" PostBackUrl="~/AdminLogin.aspx" style="font-family: candara; font-size: xx-large">Admin Login</asp:LinkButton>
            </td>
            
            <td width="33.35%" align="center" height="20">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="#333333" PostBackUrl="~/UserLogin.aspx" style="font-family: candara; font-size: xx-large">User Login</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

