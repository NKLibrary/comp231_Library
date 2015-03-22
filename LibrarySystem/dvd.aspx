﻿<%@ Page Language="C#" MasterPageFile="~/Master_Main.Master" AutoEventWireup="true" CodeBehind="dvd.aspx.cs" Inherits="VirtualCollege.Dvd" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="Master_Main_Content" runat="server">

  <h4 style="padding-top:40px"> You can reserve a DVD or CD here</h4>
        <div style="position:relative; left:1%;">


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand = "OnRowCommand" CellPadding="4" DataKeyNames="DiscId"  DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                         <asp:CommandField ShowSelectButton="false"  />
                         <asp:TemplateField HeaderText="Reserve">
<ItemTemplate>
    <asp:Button ID="Button1" Text="View Details"  CommandName="details" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server" />
<asp:Button ID="imageButtonreserve" Text="Reserve"  CommandName="reserve" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" runat="server" />
</ItemTemplate>
</asp:TemplateField>
                    <asp:BoundField DataField="DiscId" HeaderText="Status" SortExpression="Status" Visible="false"/>
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="DiscTitle" HeaderText="DiscTitle" SortExpression="DiscTitle" />
                    <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
                    <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                    <asp:BoundField DataField="Distributor" HeaderText="Distributor" SortExpression="Distributor" />
                    <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
                    <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
                    <asp:BoundField DataField="Subtitle" HeaderText="Subtitle" SortExpression="Subtitle" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                    <asp:BoundField DataField="ThumbnailPicture" HeaderText="Cover" SortExpression="ThumbnailPicture" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [Disc]"></asp:SqlDataSource>


            </div>
    
    </asp:Content>
