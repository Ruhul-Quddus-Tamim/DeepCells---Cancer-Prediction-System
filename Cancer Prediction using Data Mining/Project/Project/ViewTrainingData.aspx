<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewTrainingData.aspx.cs" Inherits="ViewTrainingData" %>

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
  <table width="100%" style="border: 1px solid #C0C0C0">
    <tr>
        <td class="auto-style2"   
            style="background-image: url('../Images/blurred.jpg'); font-family: Calibri; font-size: xx-large;"
            align="center" >-- Training Data --
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
                <asp:BoundField HeaderText="Disease" DataField="Dname"/>
                <asp:BoundField HeaderText="Age" DataField="Age"/>
                <asp:BoundField HeaderText="Gender" DataField="Gender"/>
                <asp:BoundField HeaderText="Chest Pain" DataField="ChestPain" />
                <asp:BoundField HeaderText="Sugar" DataField="BloodSugar" />
                <asp:BoundField HeaderText="Restecg" DataField="Restecg"/>
                    <asp:BoundField HeaderText="Exang" DataField="Exang"/>
                    <asp:BoundField HeaderText="Slope" DataField="Slope"/>
                    <asp:BoundField HeaderText="CA" DataField="CA"/>
                    <asp:BoundField HeaderText="Thal" DataField="Thal"/>
                    <asp:BoundField HeaderText="BP" DataField="BloodPressure"/>
                    <asp:BoundField HeaderText="Cholesterol" DataField="Cholesterol"/>
                    <asp:BoundField HeaderText="Thalach" DataField="Thalach"/>
                    <asp:BoundField HeaderText="Old Peak" DataField="Oldpeak"/>
                </Columns>
              </asp:GridView>
            </td>
        </tr>
        </table>
    <asp:Label ID="Label1" runat="server" style="font-family: calibri; font-size: x-large; color: #999999"></asp:Label>
</asp:Content>
