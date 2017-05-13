<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/HomeSite.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="_1624955_WebDevelopment.HomePage.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">                
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">                
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class ="contact">
        
        <p>
            <asp:Label ID="Label1" runat="server" Text="Product Name:"></asp:Label>
        </p>
        <p>   
            <asp:TextBox ID="txtProdName" runat="server" Width="373px" Font-Names="Adobe Devanagari"></asp:TextBox>        
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Price (BND$):"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtPrice" runat="server" Width="373px" Font-Names="Adobe Devanagari"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Quanity:"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtQuantity" runat="server" Width="373px" Font-Names="Adobe Devanagari"></asp:TextBox>
        </p>      
        <p>
            <asp:Label ID="Label4" runat="server" Text="Details:"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtDetails" runat="server" Width="373px" Font-Names="Adobe Devanagari"></asp:TextBox>
        </p>     
        <p>
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" />
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
