<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PyramidCalc.aspx.cs" Inherits="PyramidCalculator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pyramid Calculator</title>
    <style type="text/css">
        .titlePic {
            width: 400px;
            height: 200px;
        }

        /*/.titleText {
            font-family: Calibri;
            //font-size:25;
            Font-Bold="True"; 
            Font-Italic="True"; 
            Font-Size="Larger"; 
            Font-Underline="True"; 
            ForeColor="#666699";
        }
            //OnSelectedIndexChanged="Units_SelectedIndexChanged"
            */
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 3px;
        }
        .auto-style3 {
            width: 121px;
            height: 43px;
        }

        .auto-style4 {
            height: 43px;
        }
        .auto-style5 {
            width: 121px;
            height: 45px;
        }
        .auto-style7 {
            width: 121px;
            height: 50px;
        }
        .auto-style8 {
            height: 50px;
        }
    </style>
</head>
<body>
    <img class="titlePic" src="Images/pyramid.jpg"/>
    <br/>
    <asp:Label class="titleText" ID="Title" runat="server" Text="Pyramid Calculator"                       
            Font-Bold="True" 
            Font-Italic="True" 
            Font-Size="Larger"
            Font-Underline="True"
            ForeColor="#666699"></asp:Label>
    
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">Units</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="Units" runat="server">
                    </asp:DropDownList>                 
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Units" ErrorMessage="Please select a value above zero " ForeColor="#CC0000" MaximumValue="1000000000" MinimumValue="1" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Pyramid Height</td>
                <td class="auto-style8">
                    <asp:TextBox ID="Height" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="Height" ErrorMessage="Please enter a value above zero" ForeColor="#CC0000" MaximumValue="100000" MinimumValue="0.000001" Type="Double"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Height" ErrorMessage="This box cannot be empty, please enter a value." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Base Length</td>
                <td class="auto-style8">
                    <asp:TextBox ID="Length" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="Length" ErrorMessage="Please enter a value above zero" ForeColor="#CC0000" MaximumValue="100000" MinimumValue="0" Type="Double"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Length" ErrorMessage="This box cannot be empty, please enter a value." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Base Width</td>
                <td class="auto-style8">
                    <asp:TextBox ID="Width" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="Width" ErrorMessage="Please enter a value above zero" ForeColor="#CC0000" MaximumValue="100000" MinimumValue="0" Type="Double"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Width" ErrorMessage="This box cannot be empty, please enter a value." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Pyramid Volume</td>
                <td class="auto-style8">
                    <asp:Label ID="Volume" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Calculate" runat="server" OnClick="calculateButton_Click" Text="Calculate" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Reset" runat="server" OnClick="resetButton_Click" Text="Reset" style="height: 26px" />                  
                </td>
            </tr>
            <tr>
                <%--<td class="auto-style2">&nbsp;</td>--%>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
