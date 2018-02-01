<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ListOfEmp.aspx.cs" Inherits="Admin_ListOfEmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    ghjghjghj

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="eId" DataNavigateUrlFormatString="./ModifyEmployeePage.aspx?x={0}" Text="View" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="eId" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            eId:
            <asp:Label ID="eIdLabel" runat="server" Text='<%# Eval("eId") %>' />
            <br />
            empName:
            <asp:Label ID="empNameLabel" runat="server" Text='<%# Eval("empName") %>' />
            <br />
            Salary:
            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
            <br />
            DateOfJoin:
            <asp:Label ID="DateOfJoinLabel" runat="server" Text='<%# Eval("DateOfJoin") %>' />
            <br />
            Photo:
            <asp:Label ID="PhotoLabel" runat="server" Text='<%# Eval("Photo") %>' />
            <br />
            dName:
            <asp:Label ID="dNameLabel" runat="server" Text='<%# Eval("dName") %>' />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Buy" />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EmpByDept]"></asp:SqlDataSource>

</asp:Content>

