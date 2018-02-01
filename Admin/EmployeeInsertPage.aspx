<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EmployeeInsertPage.aspx.cs" Inherits="Admin_EmployeeInsertPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 490px;
            height: 430px;
        }
        .auto-style2 {
            width: 177px;
        }
        .auto-style3 {
            width: 463px;
        }
        .auto-style4 {
            width: 177px;
            height: 39px;
        }
        .auto-style5 {
            width: 463px;
            height: 39px;
        }
    </style>
    <script>

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Employee Page</h2>
<table class="auto-style1">
    <tr>
        <td class="auto-style2">Employee Id:</td>
        <td class="auto-style3">
            <asp:Label ID="lblId" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Employee Name:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Date of join:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtDOJ" Type="date" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Salary:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Photo:</td>
        <td class="auto-style3">
            <asp:Image ID="Image1" runat="server" Width="100px" class="xyz" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5">
            <asp:FileUpload ID="FileUpload1" runat="server" onchange="" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Department Id:</td>
        <td class="auto-style3">
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                <asp:ListItem Value="0">-- Select Department --</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>
<p>
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" Width="100px" OnClick="btnInsert_Click" />
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    </p>
<p>
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </p>
<p>
   
<p>
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="8" CellSpacing="4" Width="527px" AllowSorting="True" ClientIDMode="Predictable" Height="241px" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="eId" HeaderText="Employee Id" />
            <asp:BoundField DataField="Name" HeaderText="Employee Name" />
            <asp:BoundField DataField="DOJ"  DataFormatString="{0:MMMM yyyy, dd}" HeaderText="Date of Join" />
            <asp:BoundField DataField="Salary" DataFormatString="৳{0:.00}" HeaderText="Salary" />
            <asp:TemplateField HeaderText="Emp Photo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("Photo","../Upload/{0}") %>' Width="100px" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Photo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
   
</asp:Content>

