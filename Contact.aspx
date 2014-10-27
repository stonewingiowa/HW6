<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>

<body>
    <div >
        <h1>Wicked Easy Recipes</h1>
    </div>
    <div>
        <h2>Using 5 Ingedients or less!</h2>
    </div>
    <div>
       
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;  |&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
        &nbsp;  |&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/About Us.aspx">About Us</asp:HyperLink>
&nbsp;  |&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>

        </div>
    <br />
        
       
    <form id="form1" runat="server">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send Message" Width="113px" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

    </form>
    <br />
    <br />
    
            <footer> © 2013. 6K:183 Software Design & Development </footer>
        
</body>
</html>
