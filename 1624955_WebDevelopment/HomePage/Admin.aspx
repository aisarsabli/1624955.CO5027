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
            &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDataSource1" Width="1001px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ProdID" HeaderText="ProdID" InsertVisible="False" ReadOnly="True" SortExpression="ProdID" />
            <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
            <asp:BoundField DataField="ProdQuantity" HeaderText="ProdQuantity" SortExpression="ProdQuantity" />
            <asp:BoundField DataField="ProdPrice" HeaderText="ProdPrice" SortExpression="ProdPrice" />
            <asp:BoundField DataField="PriceDetail" HeaderText="PriceDetail" SortExpression="PriceDetail" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UploadPicture.aspx?id={0}" HeaderText="Image" Text="Upload" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProdID] = @original_ProdID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdQuantity] = @original_ProdQuantity) OR ([ProdQuantity] IS NULL AND @original_ProdQuantity IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL)) AND (([PriceDetail] = @original_PriceDetail) OR ([PriceDetail] IS NULL AND @original_PriceDetail IS NULL))" InsertCommand="INSERT INTO [Product] ([ProdName], [ProdQuantity], [ProdPrice], [PriceDetail]) VALUES (@ProdName, @ProdQuantity, @ProdPrice, @PriceDetail)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProdName] = @ProdName, [ProdQuantity] = @ProdQuantity, [ProdPrice] = @ProdPrice, [PriceDetail] = @PriceDetail WHERE [ProdID] = @original_ProdID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdQuantity] = @original_ProdQuantity) OR ([ProdQuantity] IS NULL AND @original_ProdQuantity IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL)) AND (([PriceDetail] = @original_PriceDetail) OR ([PriceDetail] IS NULL AND @original_PriceDetail IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProdID" Type="Int32" />
            <asp:Parameter Name="original_ProdName" Type="String" />
            <asp:Parameter Name="original_ProdQuantity" Type="String" />
            <asp:Parameter Name="original_ProdPrice" Type="Int32" />
            <asp:Parameter Name="original_PriceDetail" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProdName" Type="String" />
            <asp:Parameter Name="ProdQuantity" Type="String" />
            <asp:Parameter Name="ProdPrice" Type="Int32" />
            <asp:Parameter Name="PriceDetail" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProdName" Type="String" />
            <asp:Parameter Name="ProdQuantity" Type="String" />
            <asp:Parameter Name="ProdPrice" Type="Int32" />
            <asp:Parameter Name="PriceDetail" Type="String" />
            <asp:Parameter Name="original_ProdID" Type="Int32" />
            <asp:Parameter Name="original_ProdName" Type="String" />
            <asp:Parameter Name="original_ProdQuantity" Type="String" />
            <asp:Parameter Name="original_ProdPrice" Type="Int32" />
            <asp:Parameter Name="original_PriceDetail" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
