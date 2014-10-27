<%@ Page Language="VB" AutoEventWireup="false" CodeFile="About Us.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />

</head>
<body>
    <div >
        <h1>Wicked Easy Recipes</h1>
    </div>
    <div>
        <h2>Using 5 Ingedients or less!</h2>
    </div>
    <form id="form1" runat="server">
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
        <br />
        <div >

        <p style="padding-left:35%; padding-right:35%;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquet, tellus sit amet feugiat euismod, velit lectus pellentesque nisi, non eleifend quam ipsum at arcu. Sed semper mi a tristique porttitor. Morbi rhoncus diam dui, a ultricies eros mollis sed. Donec facilisis blandit elit ut ultrices. Nullam laoreet volutpat dolor in convallis. 
        Ut ornare mollis odio at luctus. Morbi nec blandit justo. Donec porta sagittis euismod. Cras quis congue dui. Nunc at lorem ac diam vestibulum placerat quis eu nibh. In hac habitasse platea dictumst.</p>
        <p style="padding-left:35%; padding-right:35%;"> Etiam vel lorem nec justo suscipit ornare. Sed risus urna, gravida nec convallis eu, viverra nec sem. Sed eget mauris magna. Sed vulputate tortor in tempus fringilla. Donec in commodo tellus. Ut laoreet ut lectus ac vehicula. Duis velit nulla, suscipit ut urna ac, facilisis elementum sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut dui quam, imperdiet ornare est non, accumsan vulputate justo. Vestibulum sit amet erat a nunc 
        consectetur pellentesque. Aenean imperdiet tellus nec augue eleifend condimentum.</p>

        </div>

        
    </form>
    <br />
    <br />
    <div>
            <footer> © 2013. 6K:183 Software Design & Development </footer>
        </div>
</body>
</html>
