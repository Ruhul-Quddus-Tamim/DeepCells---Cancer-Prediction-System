<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="ViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            background-color: #006600;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table width="60%" style="border: 1px solid #C0C0C0">
    <tr>
        <td class="auto-style2"   
            style="background-image: url('../Images/blurred.jpg'); font-family: Calibri; font-size: xx-large;"
            align="center" >-- User Feedback --
        </td>
        </tr>
        <tr>
            <td align="center">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    Width="100%" AutoGenerateColumns="False" 
                    style="font-family: Calibri; font-size: large">
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                <Columns>
                <asp:BoundField HeaderText="Name" DataField="Name"/>
                <asp:BoundField HeaderText="Feedback" DataField="Feedback"/>
                <asp:BoundField HeaderText="Date" DataField="Date" />
                <asp:BoundField HeaderText="Time" DataField="Time" />
                </Columns>
              </asp:GridView>
            </td>
        </tr>
        </table>
<asp:Label ID="Label1" runat="server" style="font-family: calibri; font-size: x-large; color: #999999"></asp:Label>
</asp:Content>

