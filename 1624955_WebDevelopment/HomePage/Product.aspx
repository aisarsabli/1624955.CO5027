<%@ Page Title="" Language="C#" MasterPageFile="HomeSite.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="_1624955_WebDevelopment.HomePage.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div id="box">
        <asp:Repeater ID="itemsrpt" runat="server">

        <HeaderTemplate></HeaderTemplate>
        
        <ItemTemplate>
             <div class="item" id="productItems">
                <img src="../images/<%#Eval("ImgID") %><%#Eval("ImgExtension") %>" alt="<%#Eval("ImgAlternatetext") %>"/>
                    <div class="text">
                        <h4><%#Eval("ProdName") %></h4>
                        <a href="ProductDetail.aspx?id=<%#Eval("ProdID") %>" title="Description">Description</a>
                    </div>            
                </div>
         </ItemTemplate>
       
        <FooterTemplate></FooterTemplate>        
        </asp:Repeater>
     </div> 

        <!--<div class="product">
            <div class="pimage">
                <img src="../images/1.jpg" />
            </div>  

            <div class="ptext">
                <h6>6!X ICONIC! Camo Dad Cap - Blue <br />B$70.00</h6>
            </div>

            <div class="pbutton">
                <asp:Button ID="Button1" runat="server" Height="40px" Text="ADD TO CART" Width="143px" Font-Names="ArchiesHand" />
            </div>
            
        </div>

        <div class="product">
            <div class="pimage">
                <img src="../images/1.jpg" />
            </div>  

            <div class="ptext">
                <h6>6!X ICONIC! Camo Dad Cap - Blue <br />B$70.00</h6>
            </div>

            <div class="pbutton">
                <asp:Button ID="Button2" runat="server" Height="40px" Text="ADD TO CART" Width="143px" Font-Names="ArchiesHand" />
            </div>

        </div>    --> 
              
       
                      
    
        
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
