<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Recipe </title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .auto-style2 {
            width: 137px;
        }
    </style>
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [yi_Recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [yi_Recipes] ([recipe_name], [submitted_by], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [yi_Recipes] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [yi_Recipes] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;  |&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
        &nbsp;  |&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/About Us.aspx">About Us</asp:HyperLink>
&nbsp;  |&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/contactUS.aspx">Contact</asp:HyperLink>
        <br />
        <asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Width="272px" CssClass="fromview">
            <EditItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right;" class="auto-style2">
                            Recipe Name:
                        </td>
                        <td style="text-align:left;">
                         
                            <asp:TextBox ID="tb_recipename" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                        <td style="text-align:left;">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a recipe name!" ControlToValidate="tb_recipename"></asp:RequiredFieldValidator>
                        </td>
                       
                    </tr>
                    <tr >
                        <td style="text-align:right;" class="auto-style2">
                            Submitted By:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="submittedBy" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                        <td style="text-align:left;">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your name!" ControlToValidate="submittedBy"></asp:RequiredFieldValidator>
                        </td>
                       
                    </tr>
                    <tr>
                        <td style="text-align:right;" class="auto-style2">
                            Ingredient #1:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="tb_ingredient1" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                        <td style="text-align:left;">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter at least one ingredient!" ControlToValidate="tb_ingredient1"></asp:RequiredFieldValidator>
                        </td>
                        
                    <tr>
                        <td style="text-align:right;" class="auto-style2">
                            Ingredient #2:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;" class="auto-style2">
                            Ingredient #3:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ingredient3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;" class="auto-style2">
                            Ingredient #4:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ingredient4") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;" class="auto-style2">
                            Ingredient #5:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ingredient5") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;" class="auto-style2">
                            Preparation:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="tb_preparation" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                         <td style="text-align:left;">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a preparation!" ControlToValidate="tb_preparation"></asp:RequiredFieldValidator>
                        </td>
                 
                            
                    </tr>
                     <tr>
                        <td style="text-align:right;" class="auto-style2">
                            Notes:
                        </td>
                        <td style="text-align:left;">
                              <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>
                    <tr>
                       
                        <td style="text-align:center;" class="auto-style2">
                            
                            <br />
                            &nbsp;<asp:Button ID="btn_save" runat="server" CommandName="Update" Text="Save" Height="26px" Width="64px" />
                            
                        </td>
                       
                    </tr>
                   
                </table>
               
            </EditItemTemplate>
            <InsertItemTemplate>
                
            </InsertItemTemplate>
            <ItemTemplate>
                  <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name:
                        </td>
                        <td style="text-align:left;">
                         
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                       
                    </tr>
                    <tr >
                        <td style="text-align:right;">
                            Submitted By:
                        </td>
                        <td style="text-align:left;">
                             <asp:Label ID="Label2" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                       
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #1:
                        </td>
                        <td style="text-align:left;">
                             <asp:Label ID="Label3" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                        
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #2:
                        </td>
                        <td style="text-align:left;">
                             <asp:Label ID="Label4" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #3:
                        </td>
                        <td style="text-align:left;">
                             <asp:Label ID="Label5" runat="server" Text='<%# Bind("ingredient3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #4:
                        </td>
                        <td style="text-align:left;">
                             <asp:Label ID="Label6" runat="server" Text='<%# Bind("ingredient4") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #5:
                        </td>
                        <td style="text-align:left;">
                             <asp:Label ID="Label7" runat="server" Text='<%# Bind("ingredient5") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Preparation:
                        </td>
                        <td style="text-align:left;">
                             <asp:Label ID="Label8" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                 
                            
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Notes:
                        </td>
                        <td style="text-align:left;">
                              <asp:Label ID="Label9" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            <asp:Button ID="btn_edit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        </td>
                        <td style="text-align:left;">
                            <asp:Button ID="btn_delete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /> 
                        </td>
                    </tr>
                   
                </table>
              
            
        
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
    <br />
    <br />
    <div >
            <footer> © 2013. 6K:183 Software Design & Development </footer>
        </div>
</body>
</html>
