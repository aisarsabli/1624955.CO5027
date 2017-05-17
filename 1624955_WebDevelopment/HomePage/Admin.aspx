<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/HomeSite.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="_1624955_WebDevelopment.HomePage.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">                
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">                
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div class ="adminproduct">        
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProdID" DataSourceID="SqlDataSource2" DefaultMode="Insert" Width="996px">
                <EditItemTemplate>
                    ProdID:
                    <asp:Label ID="ProdIDLabel1" runat="server" Text='<%# Eval("ProdID") %>' />
                    <br />
                    ProdName:
                    <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />
                    ProdQuantity:
                    <asp:TextBox ID="ProdQuantityTextBox" runat="server" Text='<%# Bind("ProdQuantity") %>' />
                    <br />
                    ProdPrice:
                    <asp:TextBox ID="ProdPriceTextBox" runat="server" Text='<%# Bind("ProdPrice") %>' />
                    <br />
                    PriceDetail:
                    <asp:TextBox ID="PriceDetailTextBox" runat="server" Text='<%# Bind("PriceDetail") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ProdName:
                    <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />
                    ProdQuantity:
                    <asp:TextBox ID="ProdQuantityTextBox" runat="server" Text='<%# Bind("ProdQuantity") %>' />
                    <br />
                    ProdPrice:
                    <asp:TextBox ID="ProdPriceTextBox" runat="server" Text='<%# Bind("ProdPrice") %>' />
                    <br />
                    PriceDetail:
                    <asp:TextBox ID="PriceDetailTextBox" runat="server" Text='<%# Bind("PriceDetail") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ProdID:
                    <asp:Label ID="ProdIDLabel" runat="server" Text='<%# Eval("ProdID") %>' />
                    <br />
                    ProdName:
                    <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />
                    ProdQuantity:
                    <asp:Label ID="ProdQuantityLabel" runat="server" Text='<%# Bind("ProdQuantity") %>' />
                    <br />
                    ProdPrice:
                    <asp:Label ID="ProdPriceLabel" runat="server" Text='<%# Bind("ProdPrice") %>' />
                    <br />
                    PriceDetail:
                    <asp:Label ID="PriceDetailLabel" runat="server" Text='<%# Bind("PriceDetail") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProdID] = @original_ProdID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdQuantity] = @original_ProdQuantity) OR ([ProdQuantity] IS NULL AND @original_ProdQuantity IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL)) AND (([PriceDetail] = @original_PriceDetail) OR ([PriceDetail] IS NULL AND @original_PriceDetail IS NULL))" InsertCommand="INSERT INTO [Product] ([ProdName], [ProdQuantity], [ProdPrice], [PriceDetail]) VALUES (@ProdName, @ProdQuantity, @ProdPrice, @PriceDetail)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProdName] = @ProdName, [ProdQuantity] = @ProdQuantity, [ProdPrice] = @ProdPrice, [PriceDetail] = @PriceDetail WHERE [ProdID] = @original_ProdID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdQuantity] = @original_ProdQuantity) OR ([ProdQuantity] IS NULL AND @original_ProdQuantity IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL)) AND (([PriceDetail] = @original_PriceDetail) OR ([PriceDetail] IS NULL AND @original_PriceDetail IS NULL))">
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

            <asp:Literal ID="txtMsg" runat="server"></asp:Literal><br /><br /><br />
        
        </p>        
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
            <asp:HyperLinkField DataNavigateUrlFields="ProdID" DataNavigateUrlFormatString="UploadPicture.aspx?id={0}" HeaderText="Image" Text="Upload" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1624955_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProdID] = @original_ProdID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdQuantity] = @original_ProdQuantity) OR ([ProdQuantity] IS NULL AND @original_ProdQuantity IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL)) AND (([PriceDetail] = @original_PriceDetail) OR ([PriceDetail] IS NULL AND @original_PriceDetail IS NULL))" InsertCommand="INSERT INTO [Product] ([ProdName], [ProdQuantity], [ProdPrice], [PriceDetail]) VALUES (@ProdName, @ProdQuantity, @ProdPrice, @PriceDetail)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProdName] = @ProdName, [ProdQuantity] = @ProdQuantity, [ProdPrice] = @ProdPrice, [PriceDetail] = @PriceDetail WHERE [ProdID] = @original_ProdID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdQuantity] = @original_ProdQuantity) OR ([ProdQuantity] IS NULL AND @original_ProdQuantity IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL)) AND (([PriceDetail] = @original_PriceDetail) OR ([PriceDetail] IS NULL AND @original_PriceDetail IS NULL))">
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
    <asp:Button ID="btnRefresh" runat="server" Text="Refresh" Width="110px" OnClick="btnRefresh_Click" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
