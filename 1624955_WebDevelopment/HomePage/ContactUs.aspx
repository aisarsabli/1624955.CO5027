<%@ Page Title="" Language="C#" MasterPageFile="HomeSite.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="_1624955_WebDevelopment.HomePage.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div class ="contact">
        <p>
            <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
            <asp:Literal ID="txtLiteralFN" runat="server"></asp:Literal>
        </p>
        <p>   
            <asp:TextBox ID="txtFName" runat="server" Width="373px" Font-Names="Adobe Devanagari"></asp:TextBox>        
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
            <asp:Literal ID="txtLiteralLN" runat="server"></asp:Literal>
        </p>
        <p>
            <asp:TextBox ID="txtLName" runat="server" Width="373px" Font-Names="Adobe Devanagari"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Email Address:"></asp:Label>
            <asp:Literal ID="txtLiteralE" runat="server"></asp:Literal>
        </p>
        <p>
            <asp:TextBox ID="txtEmail" runat="server" Width="373px" Font-Names="Adobe Devanagari"></asp:TextBox>
        </p>
        <p>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email form" ValidationExpression="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\s*$"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Subject:" ></asp:Label>
            <asp:Literal ID="txtLiteralS" runat="server"></asp:Literal>
        </p>
        <p>
            <asp:TextBox ID="txtSubject" runat="server" Width="373px" Font-Names="Adobe Devanagari"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Message:" ></asp:Label>
            <asp:Literal ID="txtLiteralM" runat="server"></asp:Literal>
        </p>
        <p>
            <asp:TextBox ID="txtMessage" runat="server" Height="126px" Width="373px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" />
        </p>
        <p>
            <asp:Literal ID="txtLiteral" runat="server"></asp:Literal>
        </p>
    </div>

    <div class ="map1">
        
        <h2>Google Map</h2>
        <div id="map"></div>
        <script>
          function initMap() {
              var uluru = { lat: 4.885724, lng: 114.931654 };
            var map = new google.maps.Map(document.getElementById('map'), {
              zoom: 17,
              center: uluru
            });
            var marker = new google.maps.Marker({
              position: uluru,
              map: map
            });
          }
        </script>
        <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAIBPE1-niz1w_qqk9XOX9s7v2CN0xIng&callback=initMap">
        </script>

        <h2>Static Map</h2>
        <img src="../images/Map.png" alt="Map" />

      </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    
</asp:Content>
