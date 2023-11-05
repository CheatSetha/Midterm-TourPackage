<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminContent" Runat="Server">
    <%--<asp:Login ID="login1" runat="server"></asp:Login>
    <br /><br />
    <a href="Resister.aspx">Sign Up</a>--%>

    <div class="login-container">
        <asp:Login ID="login1" runat="server" CssClass="custom-login"></asp:Login>
        <br />
        <br />
        <p>Don't have an account? <a href="Register.aspx">Sign Up</a></p>
    </div>

</asp:Content>

