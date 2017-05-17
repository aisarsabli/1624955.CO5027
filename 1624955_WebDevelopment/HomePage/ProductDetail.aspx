<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/HomeSite.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="_1624955_WebDevelopment.HomePage.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="itemwrapper">
            
             <div class="itemdetail">
             <asp:HyperLink ID="HyperLink1" runat="server"><asp:Image ID="detailImage" runat="server" /></asp:HyperLink>
                 <br />
             </div>
                <div class="itemdetailtext">
                    <p><span class="Productinfo"><asp:Label ID="Label1" runat="server" Text="Product Name: "></asp:Label></span><asp:Literal ID="Prodname" runat="server"></asp:Literal></p>
                    <p><span class="Productinfo"><asp:Label ID="desclbl" runat="server" Text="Description: "></asp:Label></span><asp:Literal ID="Proddesctxt" runat="server"></asp:Literal></p>
                    <p><span class="Productinfo"><asp:Label ID="pricelbl" runat="server" Text="Price (BND): "></asp:Label></span><asp:Literal ID="Prodpricetxt" runat="server"></asp:Literal></p>
                    <p> <asp:Literal ID="quantity" runat="server"></asp:Literal></p>
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
