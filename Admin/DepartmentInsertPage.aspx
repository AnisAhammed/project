<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="DepartmentInsertPage.aspx.cs" Inherits="Admin_DepartmentInsertPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 192px;
        }
        .auto-style3 {
            width: 192px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            width: 100%;
            height: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Department Page</h2>
    <p>&nbsp;</p>
    <asp:Panel ID="Panel1" runat="server" Height="184px">
        <table class="auto-style5">
            <tr>
                <td class="auto-style2">Department Id:</td>
                <td>
                    <asp:Label ID="lblId" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Department Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Height="21px" Width="173px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" Width="100px" OnClick="btnInsert_Click" />
                    &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
<p>&nbsp;</p>
<p>
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
</p>
<p>&nbsp;</p>
</asp:Content>

