<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Prog5.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CartProdID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="CartProdID" HeaderText="CartProdID" ReadOnly="True" SortExpression="CartProdID" />
            <asp:BoundField DataField="CartProdName" HeaderText="CartProdName" SortExpression="CartProdName" />
            <asp:BoundField DataField="CartProdQty" HeaderText="CartProdQty" SortExpression="CartProdQty" />
            <asp:BoundField DataField="CartProdUnitPrice" HeaderText="CartProdUnitPrice" SortExpression="CartProdUnitPrice" />
            <asp:BoundField DataField="CartProdCost" HeaderText="CartProdCost" SortExpression="CartProdCost" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT * FROM [Cart]"></asp:SqlDataSource>
    <table class="nav-justified">
        <tr>
            <td style="text-align: center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" />
            </td>
        </tr>
    </table>
</asp:Content>
