<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="userContent" runat="Server">
    <h1>This is home page</h1>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="PackId">
        <%-- <AlternatingItemTemplate>
            <span style="">PackageName:
            <asp:Label ID="PackageNameLabel" runat="server" Text='<%# Eval("PackageName") %>' />
            <br />
            PackId:
            <asp:Label ID="PackIdLabel" runat="server" Text='<%# Eval("PackId") %>' />
            <br />
            TourTypes:
            <asp:Label ID="TourTypesLabel" runat="server" Text='<%# Eval("TourTypes") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
            <br />
            Duration:
            <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
            <br />
            Des:
            <asp:Label ID="DesLabel" runat="server" Text='<%# Eval("Des") %>' />
            <br />
            DesURL:
            <asp:Label ID="DesURLLabel" runat="server" Text='<%# Eval("DesURL") %>' />
            <br />
            ImgURL:
            <asp:Label ID="ImgURLLabel" runat="server" Text='<%# Eval("ImgURL") %>' />
            <br />
            InDate:
            <asp:Label ID="InDateLabel" runat="server" Text='<%# Eval("InDate") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>--%>
        <%--<EditItemTemplate>
            <span style="">PackageName:
            <asp:TextBox ID="PackageNameTextBox" runat="server" Text='<%# Bind("PackageName") %>' />
                <br />
                PackId:
            <asp:Label ID="PackIdLabel1" runat="server" Text='<%# Eval("PackId") %>' />
                <br />
                TourTypes:
            <asp:TextBox ID="TourTypesTextBox" runat="server" Text='<%# Bind("TourTypes") %>' />
                <br />
                Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Duration:
            <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
                <br />
                Des:
            <asp:TextBox ID="DesTextBox" runat="server" Text='<%# Bind("Des") %>' />
                <br />
                DesURL:
            <asp:TextBox ID="DesURLTextBox" runat="server" Text='<%# Bind("DesURL") %>' />
                <br />
                ImgURL:
            <asp:TextBox ID="ImgURLTextBox" runat="server" Text='<%# Bind("ImgURL") %>' />
                <br />
                InDate:
            <asp:TextBox ID="InDateTextBox" runat="server" Text='<%# Bind("InDate") %>' />
                <br />
                UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
            </span>
        </EditItemTemplate>--%>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <%-- <InsertItemTemplate>
            <span style="">PackageName:
            <asp:TextBox ID="PackageNameTextBox" runat="server" Text='<%# Bind("PackageName") %>' />
                <br />
                TourTypes:
            <asp:TextBox ID="TourTypesTextBox" runat="server" Text='<%# Bind("TourTypes") %>' />
                <br />
                Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Duration:
            <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
                <br />
                Des:
            <asp:TextBox ID="DesTextBox" runat="server" Text='<%# Bind("Des") %>' />
                <br />
                DesURL:
            <asp:TextBox ID="DesURLTextBox" runat="server" Text='<%# Bind("DesURL") %>' />
                <br />
                ImgURL:
            <asp:TextBox ID="ImgURLTextBox" runat="server" Text='<%# Bind("ImgURL") %>' />
                <br />
                InDate:
            <asp:TextBox ID="InDateTextBox" runat="server" Text='<%# Bind("InDate") %>' />
                <br />
                UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
            </span>
        </InsertItemTemplate>--%>
       <%-- <ItemTemplate>
            <span style="">PackageName:
            <asp:Label ID="PackageNameLabel" runat="server" Text='<%# Eval("PackageName") %>' />
                <br />
                PackId:
            <asp:Label ID="PackIdLabel" runat="server" Text='<%# Eval("PackId") %>' />
                <br />
                TourTypes:
            <asp:Label ID="TourTypesLabel" runat="server" Text='<%# Eval("TourTypes") %>' />
                <br />
                Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                <br />
                City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                Duration:
            <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
                <br />
                Des:
            <asp:Label ID="DesLabel" runat="server" Text='<%# Eval("Des") %>' />
                <br />
                DesURL:
            <asp:Label ID="DesURLLabel" runat="server" Text='<%# Eval("DesURL") %>' />
                <br />
                ImgURL:
            <asp:Label ID="ImgURLLabel" runat="server" Text='<%# Eval("ImgURL") %>' />
                <div class="card" style="width: 18rem;">
                    <asp:Image CssClass="card-img-top" ID="ImageControl" runat="server" ImageUrl='<%# Eval("ImgURL") %>' />
                    <div class="card-body">
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
                <br />
                InDate:
            <asp:Label ID="InDateLabel" runat="server" Text='<%# Eval("InDate") %>' />
                <br />
                UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />
                <br />
            </span>
            <asp:HyperLink runat="server" NavigateUrl='<%# Eval("DesURL") %>'>
                <div class="card" style="width: 18rem;">
                    <asp:Image CssClass="card-img-top" ID="Image1" runat="server" ImageUrl='<%# Eval("ImgURL") %>' />
                    <div class="card-body">
              
                        <asp:Label CssClass="card-text" ID="Label1" runat="server" Text='<%# Eval("Des") %>'  />
                    </div>
                </div>


            </asp:HyperLink>
            <div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
        <asp:HyperLink runat="server" NavigateUrl='<%# Eval("DesURL") %>' >
            <asp:Image CssClass="img-fluid rounded-start" ID="Image2" runat="server" ImageUrl='<%# Eval("ImgURL") %>' />

        </asp:HyperLink>
   
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
        </ItemTemplate>--%>
         <ItemTemplate>
        <table style="width:900px">
            <tr>
                <td style="padding:10px; vertical-align:central;width:300px">
                   <asp:HyperLink runat="server" ID="imgButton" NavigateUrl='<%# Eval("desURL") %>'>
                    <asp:image ID="imgUrl" width="300px" runat="server" ImageUrl='<%# Eval("imgUrl") %>'/>
                       </asp:HyperLink>
                </td>
                <td style="padding:10px; vertical-align:top; font-size:12pt; width:600px">
                    <asp:Hyperlink ID="PackageNameLabel" CssClass="text-warning "  runat="server" Text='<%# Eval("PackageName") %>' NavigateUrl='<%# Eval("desURL") %>' Font-Bold="True" Font-Size="15pt" ForeColor="#33CCCC" />
                    <br />
                    Tour Types:
                    <asp:Label ID="TourTypesLabel" runat="server" Text='<%# Eval("TourTypes") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    &nbsp;Country:
                    <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                    <br />
                    Duration:
                    <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
                    <br />
                    About The Site:
                    <asp:Label ID="DesLabel" runat="server" Text='<%# Eval("Des") %>' />
                    <br />
                    <asp:textbox Visible="false" ID="txtId" runat="server" Text='<%# Eval("PackId") %>' />
                </td>
            </tr>
        </table>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <%-- <SelectedItemTemplate>
            <span style="">PackageName:
            <asp:Label ID="PackageNameLabel" runat="server" Text='<%# Eval("PackageName") %>' />
                <br />
                PackId:
            <asp:Label ID="PackIdLabel" runat="server" Text='<%# Eval("PackId") %>' />
                <br />
                TourTypes:
            <asp:Label ID="TourTypesLabel" runat="server" Text='<%# Eval("TourTypes") %>' />
                <br />
                Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                <br />
                City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                Duration:
            <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
                <br />
                Des:
            <asp:Label ID="DesLabel" runat="server" Text='<%# Eval("Des") %>' />
                <br />
                DesURL:
            <asp:Label ID="DesURLLabel" runat="server" Text='<%# Eval("DesURL") %>' />
                <br />
                ImgURL:
               
            <asp:Label ID="ImgURLLabel" runat="server" Text='<%# Eval("ImgURL") %>' /> 
                <asp:Image ID="ImageControl" runat="server" Width="100" ImageUrl='<%# Eval("ImgURL") %>' />
                <br />

                InDate:
            <asp:Label ID="InDateLabel" runat="server" Text='<%# Eval("InDate") %>' />
                <br />
                UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />
                <br />
            </span>
        </SelectedItemTemplate>--%>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspmidtermConnectionString %>" SelectCommand="SELECT tblTourPackages.PackageName, tblTourPackages.PackId, tblTourTypes.TourTypes, tblTourPackages.Country, tblTourPackages.City, tblTourPackages.Duration, tblTourPackages.Des, tblTourPackages.DesURL, tblTourPackages.ImgURL, tblTourPackages.InDate, tblTourPackages.UserName FROM tblTourPackages INNER JOIN tblTourTypes ON tblTourPackages.TourTypeId = tblTourTypes.TourTypeId ORDER BY tblTourPackages.PackId DESC"></asp:SqlDataSource>

</asp:Content>

