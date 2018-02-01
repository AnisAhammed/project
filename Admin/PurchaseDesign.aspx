<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="PurchaseDesign.aspx.cs" Inherits="Admin_PurchaseDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>&nbsp;</p>
    <p>Purchase Details </p>
    <p>&nbsp;</p>
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>PID</td>
            <td>
                <asp:TextBox ID="txtPID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>PName</td>
            <td>
                <asp:TextBox ID="txtPname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>UPrice</td>
            <td>
                <asp:TextBox ID="txtUprice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Qty</td>
            <td>
                <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>PDate</td>
            <td>
                <asp:TextBox ID="txtPDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>RLevel</td>
            <td>
                <asp:TextBox ID="txtRlevel" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Category ID</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

