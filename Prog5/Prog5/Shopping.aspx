﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shopping.aspx.cs" Inherits="Prog5.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" HorizontalAlign="Center" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Height="35px" Width="304px">
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([ProductID], [ProductName], [UnitPrice], [Description]) Values(@ProductID, @ProductName, @UnitPrice, @Description)" UpdateCommand="UPDATE [Product] SET ProductName = @ProductName, UnitPrice = @UnitPrice, Description = @Description WHERE ProductID = @ProductID"></asp:SqlDataSource>
</asp:Content>
