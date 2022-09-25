<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .intLog
        {
    	    -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
        }
        .style9
        {
            height: 40px;
        }
     .style10
     {
         -webkit-border-radius: 10px;
         -moz-border-radius: 10px;
         font-family: Calibri;
     }
     .style11
     {
         font-family: Calibri;
         font-size: large;
            color: #333333;
            font-weight: 700;
        }
     .style12
     {
         -webkit-border-radius: 10px;
         -moz-border-radius: 10px;
         font-family: Calibri;
         font-size: large;
     }
     .style13
     {
         width: 20%;
     }
     .style14
     {
         width: 20%;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="background-image: url('Images/bg.jpg'); " 
        width="60%" class="intLog">
        <tr>
            <td colspan="4" 
                style="background-image: url('Images/blurred.jpg')" 
                align="center" class="intLog" bgcolor="#CC3300">
                <asp:Label ID="Label3" runat="server" style="font-family: calibri; font-size: xx-large; color: #FFFFFF;" Text="-- Register --"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <span class="style11">Id : </span>
                <asp:Label ID="Label1" runat="server" CssClass="style11" Text="Label"></asp:Label>
            </td>
            <td width="33%" class="style14">
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style12" 
                    placeholder="  Name" required="Required" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style12" 
                    placeholder=" Address" required="Required" TextMode="MultiLine" 
                    Width="99%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style12" 
                    placeholder="  Mobile No." required="Required" MaxLength="10" Width="100%"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RxvMobNo" runat="Server" 
                                ControlToValidate="TextBox3" ErrorMessage="Invalid Mobile No.!" 
                                ForeColor="#FF3300" ValidationExpression="^[7-9]\d{9}$" 
                                style="font-family: Calibri"></asp:RegularExpressionValidator>
            </td>
            <td width="33%" align="left" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td class="style9" align="left" colspan="2" >
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style12" 
                    placeholder="  Email Id" required="Required" Width="100%"></asp:TextBox>
                <br />
                 <asp:RegularExpressionValidator ID="RxvEmail" runat="Server" 
                                ControlToValidate="TextBox4" ErrorMessage="Invalid Email Id!" 
                                ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                style="font-family: Calibri"></asp:RegularExpressionValidator>
            </td>
            <td width="33%" align="left" class="style14">
                 &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style12" 
                    placeholder="  Your Age" required="Required" MaxLength="3" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td width="20%">
                <asp:Label ID="Label4" runat="server" style="font-size: large; font-family: calibri; font-weight: 700;" Text="Gender : "></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" style="font-family: calibri; font-size: large" Width="100%">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style12" 
                    placeholder="  Password" required="Required" TextMode="Password" 
                    MaxLength="16" Width="100%"></asp:TextBox>
            </td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="33%" class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="style10" 
                    Height="35px" Width="100px" Font-Size="X-Large" ForeColor="#333333" 
                    BorderColor="#009933" OnClick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td width="20%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

