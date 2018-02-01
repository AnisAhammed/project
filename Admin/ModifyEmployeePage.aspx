<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ModifyEmployeePage.aspx.cs" Inherits="Admin_ModifyEmployeePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 434px;
            height: 416px;
        }
        .auto-style2 {
            width: 266px;
        }
        .auto-style3 {
            width: 266px;
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Modify Employee Page</h2>
    <p>&nbsp;</p>
<table class="auto-style1" border="0">
    <tr>
        <td class="auto-style2">Employee Id:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtEId" runat="server" Height="22px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Employee Name:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Date of join:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtDOJ" Type="date" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Salary:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Photo:</td>
        <td class="auto-style2">
            <asp:Image ID="Image1" runat="server" Width="100px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style2">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Department Id:</td>
        <td class="auto-style2">
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                <asp:ListItem Value="0">-- Select Department --</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
&nbsp;
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
&nbsp; </td>
    </tr>
</table>
    <p>&nbsp;</p>
    <p>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</asp:Content>

