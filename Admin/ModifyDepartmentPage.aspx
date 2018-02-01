<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ModifyDepartmentPage.aspx.cs" Inherits="Admin_ModifyDepartmentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 234px;
        }
        .auto-style2 {
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Modify Department Page</h2>
    <p>&nbsp;</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Department Id:</td>
            <td>
                <asp:TextBox ID="txtId" runat="server" Height="24px" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Department Name:</td>
            <td>
                    <asp:TextBox ID="txtName" runat="server" Height="21px" Width="173px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="Update" />
&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="8" CellSpacing="4" Height="238px" Width="434px">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</asp:Content>

