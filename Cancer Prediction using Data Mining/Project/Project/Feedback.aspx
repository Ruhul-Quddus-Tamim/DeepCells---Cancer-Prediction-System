<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table width="60%" class="intLog" 
           style="border: 1px solid #C0C0C0; background-image: url('Images/bg1.jpg'); height: 175px;">
                                <tr>
                                    <td style="background-image: url('Images/blurred.jpg'); font-size: xx-large; font-family: Calibri;" 
                                        align="center" colspan="3" class="auto-style1" bgcolor="#CC3300">
                                        -- Provide Feedback --</td>
                                </tr>
                                <tr>
                                <td colspan="3">
                                <br />
                                </td>
                                </tr>
                                <tr>
                                    <td class="style1" width="30%">
                                        
                                    </td>
                                    <td class="style1" align="left" colspan="2">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="intLog" 
                                            placeholder="  Name" required="Required" Font-Size="Large" Height="30px" 
                                            Width="170px" BackColor="#CCCCCC" ReadOnly="True"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <br />
                                        </td>
                                </tr>
                                <tr>
                                    <td width="30%">
                                        
                                        </td>
                                    <td align="left" colspan="2">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="intLog" 
                                            placeholder=" Your Feedback...." required="Required" Height="100px" 
                                            TextMode="MultiLine" Width="300px" Font-Size="Large"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <br /></td>
                                </tr>
                                <tr>
                                    <td width="30%">
                                        &nbsp;</td>
                                    <td align="center">
                                        <asp:Button ID="btnSubmit" runat="server" CssClass="intLog" Font-Size="Large" 
                                            Height="31px" onclick="Button1_Click" Text="Submit" Width="80px" />
                                        &nbsp;</td>
                                    <td align="left" width="35%">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <br /></td>
                                </tr>
                            </table>
</asp:Content>

