<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNew.aspx.cs" Inherits="AddNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminContent" runat="Server">
    <center>
        <h2>Add New Package Tour</h2>
        <font size="5px">
            <table>
                <%--       <tr>
        <td style="padding:5px; width:200px">
            <asp:Label runat="server" ID="Label10" Text="Package ID"></asp:Label>
        </td>
        <td style="padding:5px; width:700px">
            <asp:TextBox runat="server" ID="txtPackId" Font-Size="18px" Width="650px"></asp:TextBox>
        </td>
    </tr>--%>
                <tr>
                    <td style="padding: 5px">
                        <asp:Label runat="server" CssClass="form-label" ID="Label1" Text="Package Name"></asp:Label>
                    </td>
                    <td style="padding: 5px">
                        <%--  <asp:Label runat="server" CssClass="form-label mb-3" ID="Label10" Text="Package Name"></asp:Label> --%>
                        <asp:TextBox runat="server" ID="txtPackName" Font-Size="18px" Width="650px" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td style="padding: 5px">
                        <asp:Label runat="server" ID="Label6" Text="Tour Type"></asp:Label>
                    </td>
                    <td style="padding: 5px">
                        <asp:DropDownList runat="server" ID="tourType" Font-Size="18px" Width="655px" CssClass="form-select" DataSourceID="SqlDataSource2" DataTextField="TourTypes" DataValueField="TourTypeId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspmidtermConnectionString %>" SelectCommand="SELECT [TourTypes], [TourTypeId] FROM [tblTourTypes]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        <asp:Label runat="server" ID="Label7" Text="Category"></asp:Label>
                    </td>
                    <td style="padding: 5px">
                        <asp:DropDownList runat="server" ID="category" Font-Size="18px" Width="655px" CssClass="form-select" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="CatID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspmidtermConnectionString %>" ProviderName="<%$ ConnectionStrings:aspmidtermConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCategory]"></asp:SqlDataSource>

                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        <asp:Label runat="server" ID="Label2" Text="Country"></asp:Label>
                    </td>
                    <td style="padding: 5px">
                        <asp:TextBox runat="server" ID="txtCountry" CssClass="form-control" Font-Size="18px" Width="650px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        <asp:Label runat="server" ID="Label3" Text="City"></asp:Label>
                    </td>
                    <td style="padding: 5px">
                        <asp:TextBox runat="server" ID="txtCity" CssClass="form-control" Font-Size="18px" Width="650px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        <asp:Label runat="server" ID="Label4" Text="Duration"></asp:Label>
                    </td>
                    <td style="padding: 5px">
                        <asp:TextBox runat="server" ID="txtDuration" CssClass="form-control" Font-Size="18px" Width="650px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        <asp:Label runat="server" ID="Label5" Text="Link"></asp:Label>
                    </td>
                    <td style="padding: 5px">
                        <asp:TextBox runat="server" ID="txtLink" CssClass="form-control" Font-Size="18px" Width="650px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        <asp:Label runat="server" ID="Label8" Text="Package Des."></asp:Label>
                    </td>
                    <td style="padding: 5px">
                        <asp:TextBox runat="server" ID="txtDes" Font-Size="18px" CssClass="form-control" TextMode="MultiLine" Rows="5" Columns="64"> </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        <asp:Label runat="server" ID="Label9" Text="Choose Images"></asp:Label>
                    </td>
                    <td style="padding: 5px" font-size="18px">
                        <asp:FileUpload CssClass="form-control form-control-lg" runat="server" ID="imgUp" Font-Size="18px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px">
                        <asp:CheckBox Enabled="true" runat="server" ID="chkAgr" Text="Check to confirm the condtion" AutoPostBack="true" OnCheckedChanged="chkAgr_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="padding: 5px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button runat="server" CssClass="btn btn-outline-primary" ID="cmdAdd" Text="Add New" Font-Size="18px" OnClick="cmdAdd_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="cmdCancel" CssClass="btn btn-outline-danger" Text="Cancel" Font-Size="18px" OnClick="cmdCancel_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="cmdReset" CssClass="btn btn-outline-info" Text="Reset" Font-Size="18px" OnClick="cmdReset_Click"/>
                    </td>
                </tr>
            </table>
        </font>
    </center>
</asp:Content>

