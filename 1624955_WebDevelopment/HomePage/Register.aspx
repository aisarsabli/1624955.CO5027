<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1624955_WebDevelopment.HomePage.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>


<body>

    <div class="align">
        <form id="form1" runat="server">      

            <div id="Registerweblogo">
                <a href="Default.aspx"><img src="../images/CapSul1.png" alt= "image" style="height: 135px" /></a>
                 

            <div class ="login">       
                        Log In<br /><br />       
                        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label><br />
                        <asp:TextBox ID="txtUsername" runat="server" Width="254px"></asp:TextBox><br />
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label><br />
                        <asp:TextBox ID="txtPassword" runat="server" Width="254px"></asp:TextBox><br />                     
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br /><br />
                        <asp:Literal ID="txtliteral" runat="server"></asp:Literal><br /><br /><br />
            </div>

            <div class ="signin">       
                        Sign Up<br /><br />
                        <asp:Label ID="Label3" runat="server" Text="First Name:"></asp:Label><br />
                        <asp:TextBox ID="txtFirstName" runat="server" Width="254px"></asp:TextBox><br />
                        <asp:Label ID="Label4" runat="server" Text="Last Name:"></asp:Label><br />
                        <asp:TextBox ID="txtLastName" runat="server" Width="254px"></asp:TextBox><br />
                        <asp:Label ID="Label5" runat="server" Text="Email Address:"></asp:Label><br />
                        <asp:TextBox ID="txtEmail" runat="server" Width="254px"></asp:TextBox><br />
                        <asp:Label ID="Label6" runat="server" Text="Phone Number:"></asp:Label><br />
                        <asp:TextBox ID="txtPhone" runat="server" Width="254px"></asp:TextBox><br />
                        <asp:Label ID="Label9" runat="server" Text="Username:"></asp:Label><br />
                        <asp:TextBox ID="txtRUsername" runat="server" Width="254px"></asp:TextBox><br />
                        <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label><br />                
                        <asp:TextBox ID="txtRPassword" runat="server" Width="254px"></asp:TextBox><br />
                        <asp:Label ID="Label8" runat="server" Text="Confirm Password:"></asp:Label><br />
                        <asp:TextBox ID="txtCRPassword" runat="server" Width="254px"></asp:TextBox><br />
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"/>&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Cancle" /><br /><br />
                        <asp:Literal ID="txtliteral2" runat="server"></asp:Literal>
            </div>
            </div>
           
        </form>
     </div>
</body>
</html>
