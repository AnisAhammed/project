<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Admin_Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Message Send</h2>
    <p>&nbsp;</p>
    <table class="nav-justified">
        <tr>
            <td>To</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>subject</td>
            <td>
                <asp:TextBox ID="txtSub" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Message</td>
            <td>
                <asp:TextBox ID="txtMsg" runat="server" Height="142px" TextMode="MultiLine" Width="449px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Width="100px" />
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style1">
                <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Send" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>&nbsp;</p>

</asp:Content>

