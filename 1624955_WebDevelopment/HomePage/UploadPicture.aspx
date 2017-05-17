<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/HomeSite.Master" AutoEventWireup="true" CodeBehind="UploadPicture.aspx.cs" Inherits="_1624955_WebDevelopment.HomePage.UploadPicture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
                <asp:Label ID="Label3" runat="server" Text="Upload Image:"></asp:Label><br />
                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                <asp:Label ID="Label1" runat="server" Text="Alternate text:"></asp:Label><br />
                <asp:TextBox ID="txtAlternateText" runat="server" Width="254px"></asp:TextBox>&nbsp;<asp:Button ID="btnShow" runat="server" Text="View Picture" OnClick="btnShow_Click" />
    <asp:Image ID="Image1" runat="server" />
    <br />
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
                <br />
                <asp:Literal ID="litResult" runat="server"></asp:Literal><br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ImgID" DataSourceID="SqlDataSource1" Width="998px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ImgID" HeaderText="ImgID" InsertVisible="False" ReadOnly="True" SortExpression="ImgID" />
            <asp:BoundField DataField="ImgName" HeaderText="ImgName" SortExpression="ImgName" />
            <asp:BoundField DataField="ImgWidth" HeaderText="ImgWidth" SortExpression="ImgWidth" />
            <asp:BoundField DataField="ImgHeight" HeaderText="ImgHeight" SortExpression="ImgHeight" />
            <asp:BoundField DataField="ImgExtension" HeaderText="ImgExtension" SortExpression="ImgExtension" />
            <asp:BoundField DataField="ImgAlternatetext" HeaderText="ImgAlternatetext" SortExpression="ImgAlternatetext" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Image] WHERE [ImgID] = @original_ImgID AND (([ImgName] = @original_ImgName) OR ([ImgName] IS NULL AND @original_ImgName IS NULL)) AND (([ImgWidth] = @original_ImgWidth) OR ([ImgWidth] IS NULL AND @original_ImgWidth IS NULL)) AND (([ImgHeight] = @original_ImgHeight) OR ([ImgHeight] IS NULL AND @original_ImgHeight IS NULL)) AND (([ImgExtension] = @original_ImgExtension) OR ([ImgExtension] IS NULL AND @original_ImgExtension IS NULL)) AND (([ImgAlternatetext] = @original_ImgAlternatetext) OR ([ImgAlternatetext] IS NULL AND @original_ImgAlternatetext IS NULL))" InsertCommand="INSERT INTO [Image] ([ImgName], [ImgWidth], [ImgHeight], [ImgExtension], [ImgAlternatetext]) VALUES (@ImgName, @ImgWidth, @ImgHeight, @ImgExtension, @ImgAlternatetext)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Image]" UpdateCommand="UPDATE [Image] SET [ImgName] = @ImgName, [ImgWidth] = @ImgWidth, [ImgHeight] = @ImgHeight, [ImgExtension] = @ImgExtension, [ImgAlternatetext] = @ImgAlternatetext WHERE [ImgID] = @original_ImgID AND (([ImgName] = @original_ImgName) OR ([ImgName] IS NULL AND @original_ImgName IS NULL)) AND (([ImgWidth] = @original_ImgWidth) OR ([ImgWidth] IS NULL AND @original_ImgWidth IS NULL)) AND (([ImgHeight] = @original_ImgHeight) OR ([ImgHeight] IS NULL AND @original_ImgHeight IS NULL)) AND (([ImgExtension] = @original_ImgExtension) OR ([ImgExtension] IS NULL AND @original_ImgExtension IS NULL)) AND (([ImgAlternatetext] = @original_ImgAlternatetext) OR ([ImgAlternatetext] IS NULL AND @original_ImgAlternatetext IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ImgID" Type="Int32" />
            <asp:Parameter Name="original_ImgName" Type="String" />
            <asp:Parameter Name="original_ImgWidth" Type="String" />
            <asp:Parameter Name="original_ImgHeight" Type="String" />
            <asp:Parameter Name="original_ImgExtension" Type="String" />
            <asp:Parameter Name="original_ImgAlternatetext" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ImgName" Type="String" />
            <asp:Parameter Name="ImgWidth" Type="String" />
            <asp:Parameter Name="ImgHeight" Type="String" />
            <asp:Parameter Name="ImgExtension" Type="String" />
            <asp:Parameter Name="ImgAlternatetext" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ImgName" Type="String" />
            <asp:Parameter Name="ImgWidth" Type="String" />
            <asp:Parameter Name="ImgHeight" Type="String" />
            <asp:Parameter Name="ImgExtension" Type="String" />
            <asp:Parameter Name="ImgAlternatetext" Type="String" />
            <asp:Parameter Name="original_ImgID" Type="Int32" />
            <asp:Parameter Name="original_ImgName" Type="String" />
            <asp:Parameter Name="original_ImgWidth" Type="String" />
            <asp:Parameter Name="original_ImgHeight" Type="String" />
            <asp:Parameter Name="original_ImgExtension" Type="String" />
            <asp:Parameter Name="original_ImgAlternatetext" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <br />
    <asp:Button ID="btnRefresh" runat="server" Text="Refresh" Width="110px" OnClick="btnRefresh_Click" />
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
