<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LisyOfCat.aspx.cs" Inherits="LisyOfCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="anis">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

    </div>
    <input id="btnPrint" type="button" value="Print" onclick="printDiv('anis');"/>
    <asp:Button ID="Button1" runat="server" Text="Add New Cat" OnClick="Button1_Click" />
<br />
    <br />
    <br />
    Stock<br />
    <asp:GridView ID="GridView2" runat="server" EmptyDataText="No Data Found in Stock" ShowHeaderWhenEmpty="True">
    </asp:GridView>
<br />
<asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

