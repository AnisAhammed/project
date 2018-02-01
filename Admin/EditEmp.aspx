<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditEmp.aspx.cs" Inherits="Admin_EditEmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="anis">
    <h2>Edit Employee Page</h2>
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
        &nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        &nbsp;
                    &nbsp; </td>
            </tr>
        </table>
        <input id="Button1" type="button" value="Print" onclick="printDiv('anis');" />
</div>
    <input id="btnPrint" type="button" value="Cat Print" onclick="printDiv('anis');"/>
    <p>&nbsp;</p>
    <p>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</asp:Content>

