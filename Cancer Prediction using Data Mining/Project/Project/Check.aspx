<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Check.aspx.cs" Inherits="Check" %>

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
         }
     .style14
     {
         width: 20%;
     }
         .auto-style1 {
             font-family: gadugi;
         }
         .auto-style2 {
             height: 46px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Results :" style="font-size: x-large; font-family: gadugi;" Visible="False"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="" style="font-size: x-large; color: #990000; font-family: gadugi;"></asp:Label>
        </asp:Panel>
    <br />
    <table style="border: 1px solid #C0C0C0; background-image: url('Images/bg.jpg'); " 
        width="90%" class="intLog">
        <tr>
            <td colspan="2" 
                style="background-image: url('Images/blurred.jpg')" 
                align="center" class="intLog" bgcolor="#CC3300">
                <asp:Label ID="Label3" runat="server" style="font-family: calibri; font-size: xx-large; color: #FFFFFF;" Text="-- Cancer Diagnose --"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right" style="color: #FF0000; font-size: small">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="color: #FF0000; font-size: small">
                <span class="auto-style1">* Kindly fill up all the details given below</span><br />
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="right" width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" width="50%">
                <asp:Label ID="Label26" runat="server" style="font-family: gadugi; font-size: large" Text="Name :"></asp:Label>
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="TextBox8" runat="server" Placeholder=" Your Name.." style="font-family: gadugi" Height="25px" Width="50%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                &nbsp;</td>
            <td align="left" width="50%">
                <asp:Label ID="LabelErr18" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Field cannot be left blank" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%" style="width: 50%">
                <asp:Label ID="Label4" runat="server" style="font-family: gadugi; font-size: large" Text="Gender :"></asp:Label>
            </td>
            <td width="35%" align="left" style="width: 50%">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" style="font-family: gadugi; font-size: large" Width="30%" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%" style="width: 50%">
                &nbsp;</td>
            <td width="35%" align="left" style="width: 50%">
                <asp:Label ID="LabelErr" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%" style="width: 50%">
                <asp:Label ID="Label25" runat="server" style="font-family: gadugi; font-size: large" Text="Age :"></asp:Label>
            </td>
            <td width="35%" align="left" style="width: 50%">
                <asp:TextBox ID="TextBox7" runat="server" Placeholder=" Your Age.." style="font-family: gadugi" Height="25px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Numeric Only" style="font-family: gadugi; color: #FF3300; font-size: small;" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%" style="width: 50%">
                &nbsp;</td>
            <td width="35%" align="left" style="width: 50%">
                <asp:Label ID="LabelErr19" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Field cannot be left blank" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%" style="width: 50%">
                &nbsp;</td>
            <td width="35%" align="left" style="width: 50%">
                &nbsp;</td>
        </tr>
        </table>
    <br />
    <asp:Panel ID="Panel2" runat="server" Visible="False">
    <table style="border: 1px solid #C0C0C0; background-image: url('Images/bg.jpg'); " 
        width="90%" class="intLog">
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label5" runat="server" style="font-family: gadugi; font-size: large" Text="Change in shape of the Breast :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="30%" align="right">
                <asp:Label ID="Label6" runat="server" style="font-family: gadugi; font-size: large" Text="Skin irritation near Breast :"></asp:Label>
            </td>
            <td width="15%" align="left">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                &nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr0" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
            <td width="30%" align="right">
                &nbsp;</td>
            <td width="20%" align="left">
                <asp:Label ID="LabelErr1" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
        </tr>
        </table>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Visible="False">
    <table style="border: 1px solid #C0C0C0; background-image: url('Images/bg.jpg'); " 
        width="90%" class="intLog">
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label9" runat="server" style="font-family: gadugi; font-size: large" Text="Blood or blood clots in Urine :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="DropDownList4" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="30%" align="right">
                <asp:Label ID="Label10" runat="server" style="font-family: gadugi; font-size: large" Text="Urination visit in a Day :"></asp:Label>
            </td>
            <td width="20%" align="left">
                <asp:TextBox ID="TextBox1" runat="server" style="font-family: gadugi"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                &nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr2" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
            <td width="30%" align="right">
                &nbsp;</td>
            <td width="20%" align="left">
                <asp:Label ID="LabelErr3" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Field cannot be left blank" Visible="False"></asp:Label>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Numeric Only" style="font-family: gadugi; color: #FF3300; font-size: small;" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label11" runat="server" style="font-family: gadugi; font-size: large" Text="Chest Pain :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="DropDownList5" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="0">No Pain</asp:ListItem>
                    <asp:ListItem Value="1">Low</asp:ListItem>
                    <asp:ListItem Value="2">Moderate</asp:ListItem>
                    <asp:ListItem Value="3">High</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="30%" align="right">
                <asp:Label ID="Label12" runat="server" style="font-family: gadugi; font-size: large" Text="Coughing up Blood :"></asp:Label>
            </td>
            <td width="20%" align="left">
                <asp:DropDownList ID="DropDownList6" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                &nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr4" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
            <td width="30%" align="right">
                &nbsp;</td>
            <td width="20%" align="left">
                <asp:Label ID="LabelErr5" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%" class="auto-style2">
                <asp:Label ID="Label13" runat="server" style="font-family: gadugi; font-size: large" Text="Pain/Itching in the mouth :"></asp:Label>
            </td>
            <td align="left" width="20%" class="auto-style2">
                <asp:DropDownList ID="DropDownList7" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="30%" align="right" class="auto-style2">
                <asp:Label ID="Label14" runat="server" style="font-family: gadugi; font-size: large" Text="How many Red/white patch on the gums :"></asp:Label>
            </td>
            <td width="20%" align="left" class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" style="font-family: gadugi"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="Numeric Only" style="font-family: gadugi; color: #FF3300; font-size: small;" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                &nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr6" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
            <td width="30%" align="right">
                &nbsp;</td>
            <td width="20%" align="left">
                <asp:Label ID="LabelErr7" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Field cannot be left blank" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label15" runat="server" style="font-family: gadugi; font-size: large" Text="Difficulty chewing, swallowing :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="DropDownList8" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="30%" align="right">
                <asp:Label ID="Label16" runat="server" style="font-family: gadugi; font-size: large" Text="Headache Pain :"></asp:Label>
            </td>
            <td width="20%" align="left">
                <asp:DropDownList ID="DropDownList14" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="0">No Pain</asp:ListItem>
                    <asp:ListItem Value="1">Low</asp:ListItem>
                    <asp:ListItem Value="2">Moderate</asp:ListItem>
                    <asp:ListItem Value="3">High</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                &nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr8" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
            <td width="30%" align="right">
                &nbsp;</td>
            <td width="20%" align="left">
                <asp:Label ID="LabelErr9" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label17" runat="server" style="font-family: gadugi; font-size: large" Text="Vomiting in a Day :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:TextBox ID="TextBox4" runat="server" style="font-family: gadugi"></asp:TextBox>
            </td>
            <td width="30%" align="right">
                <asp:Label ID="Label18" runat="server" style="font-family: gadugi; font-size: large" Text="Memory Problems :"></asp:Label>
            </td>
            <td width="20%" align="left">
                <asp:DropDownList ID="DropDownList9" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                &nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr10" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Field cannot be left blank" Visible="False"></asp:Label>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="Numeric Only" style="font-family: gadugi; color: #FF3300; font-size: small;" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
            <td width="30%" align="right">
                &nbsp;</td>
            <td width="20%" align="left">
                <asp:Label ID="LabelErr11" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label19" runat="server" style="font-family: gadugi; font-size: large" Text="How many reddish, raised patch on Skin :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:TextBox ID="TextBox5" runat="server" style="font-family: gadugi"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="Numeric Only" style="font-family: gadugi; color: #FF3300; font-size: small;" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
            <td align="right" width="30%">
                <asp:Label ID="Label20" runat="server" style="font-family: gadugi; font-size: large" Text="Size of Patch :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="DropDownList10" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="0">None</asp:ListItem>
                    <asp:ListItem Value="1">Small</asp:ListItem>
                    <asp:ListItem Value="2">Meduim</asp:ListItem>
                    <asp:ListItem Value="3">Large</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">&nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr12" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Field cannot be left blank" Visible="False"></asp:Label>
            </td>
            <td align="right" width="30%">&nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr13" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label21" runat="server" style="font-family: gadugi; font-size: large" Text="Heartburn :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="DropDownList11" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="right" width="30%">
                <asp:Label ID="Label22" runat="server" style="font-family: gadugi; font-size: large" Text="Bloating of stomach after meals :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="DropDownList12" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">&nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr14" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
            <td align="right" width="30%">&nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr15" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label23" runat="server" style="font-family: gadugi; font-size: large" Text="Pain, near the right shoulder blade, or in the back :"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:DropDownList ID="DropDownList13" runat="server" Height="35px" style="font-family: gadugi" Width="80%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="0">No Pain</asp:ListItem>
                    <asp:ListItem Value="1">Low</asp:ListItem>
                    <asp:ListItem Value="2">Moderate</asp:ListItem>
                    <asp:ListItem Value="3">High</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="right" width="30%">
                <asp:Label ID="Label24" runat="server" style="font-family: gadugi; font-size: large" Text="How much Unexplained weight loss:"></asp:Label>
            </td>
            <td align="left" width="20%">
                <asp:TextBox ID="TextBox6" runat="server" style="font-family: gadugi"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBox6" ErrorMessage="Numeric Only" style="font-family: gadugi; color: #FF3300; font-size: small;" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">&nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr16" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Kindly select any one option" Visible="False"></asp:Label>
            </td>
            <td align="right" width="30%">&nbsp;</td>
            <td align="left" width="20%">
                <asp:Label ID="LabelErr17" runat="server" style="font-family: gadugi; color: #FF3300; font-size: small;" Text="Field cannot be left blank" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
               
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
               
                <asp:Button ID="btnAnalyse" runat="server" Text="Analyse Now" CssClass="style10" 
                    Height="38px" Width="200px" Font-Size="X-Large" ForeColor="#333333" 
                    BorderColor="#009933" OnClick="btnAnalyse_Click"/>
                <br />
                <br />
        </td>
        </tr>
        </table>
        </asp:Panel>
</asp:Content>
