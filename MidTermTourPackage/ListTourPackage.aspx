<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ListTourPackage.aspx.cs" Inherits="ListTourPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminContent" runat="Server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PackId" DataSourceID="SqlDataSourceTourPackage" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="true" ShowEditButton="true" />
            <asp:BoundField DataField="PackId" HeaderText="PackId" InsertVisible="False" ReadOnly="True" SortExpression="PackId" />
            <asp:BoundField DataField="PackageName" HeaderText="PackageName" SortExpression="PackageName" />
            <asp:BoundField DataField="TourTypeId" HeaderText="TourTypeId" SortExpression="TourTypeId" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:BoundField DataField="Des" HeaderText="Des" SortExpression="Des" />
            <asp:BoundField DataField="DesURL" HeaderText="DesURL" SortExpression="DesURL" />
            <%--<asp:BoundField DataField="ImgURL" HeaderText="ImgURL" SortExpression="ImgURL" />--%>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="ImageControl" runat="server" Width="100" ImageUrl='<%# Eval("ImgURL") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <%-- add ImgURL to img tags --%>

            <asp:BoundField DataField="InDate" HeaderText="InDate" SortExpression="InDate" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="CatID" HeaderText="CatID" SortExpression="CatID" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSourceTourPackage" runat="server"
        ConnectionString="<%$ ConnectionStrings:aspmidtermConnectionString %>"
        SelectCommand="SELECT * FROM [tblTourPackages]"
        UpdateCommand = "UPDATE [tblTourPackages] SET [PackageName] = @PackageName, [TourTypeId] = @TourTypeId, [Country] = @Country, [City] = @City, [Duration] = @Duration, [Des] = @Des, [ImgURL] = @ImgURL, [InDate] = @InDate WHERE [PackId] = @PackId"

        DeleteCommand="DELETE FROM [tblTourPackages] WHERE [PackId] = @PackId">
        <UpdateParameters>
            <asp:Parameter Name="NewValue" Type="String" />
            <asp:Parameter Name="PackId" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="PackId" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>

    <%--<asp:SqlDataSource ID="SqlDataSourceTourPackage" runat="server" ConnectionString="<%$ ConnectionStrings:aspmidtermConnectionString %>" SelectCommand="SELECT * FROM [tblTourPackages]"></asp:SqlDataSource>--%>
</asp:Content>

