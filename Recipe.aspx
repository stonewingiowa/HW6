<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [yi_Recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [yi_Recipes] ([recipe_name], [submitted_by], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [yi_Recipes]" UpdateCommand="UPDATE [yi_Recipes] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
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
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/About Us.aspx">About Us</asp:HyperLink>
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/contactUS.aspx">Contact</asp:HyperLink>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" DefaultMode="Edit">
            <EditItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name:
                        </td>
                        <td style="text-align:left;">
                         
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                       
                    </tr>
                    <tr >
                        <td style="text-align:right;">
                            Submitted By:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                       
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #1:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                        
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #2:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #3:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ingredient3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #4:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ingredient4") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #5:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ingredient5") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Preparation:
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                 
                            
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                            Notes:
                        </td>
                        <td style="text-align:left;">
                              <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("notes") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            <asp:Button ID="btn_edit" runat="server" CausesValidation="True" CommandName="Update" Text="Edit" />
                        </td>
                        <td style="text-align:left;">
                            <asp:Button ID="btn_delete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /> 
                        </td>
                    </tr>
                   
                </table>
               
            </EditItemTemplate>
            <InsertItemTemplate>
                
            </InsertItemTemplate>
            <ItemTemplate>
                recipeID:
                <asp:Label ID="recipeIDLabel" runat="server" Text='<%# Eval("recipeID") %>' />
                <br />
                recipe_name:
                <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Bind("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:Label ID="submitted_byLabel" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ingredient1:
                <asp:Label ID="ingredient1Label" runat="server" Text='<%# Bind("ingredient1") %>' />
                <br />
                ingredient2:
                <asp:Label ID="ingredient2Label" runat="server" Text='<%# Bind("ingredient2") %>' />
                <br />
                ingredient3:
                <asp:Label ID="ingredient3Label" runat="server" Text='<%# Bind("ingredient3") %>' />
                <br />
                ingredient4:
                <asp:Label ID="ingredient4Label" runat="server" Text='<%# Bind("ingredient4") %>' />
                <br />
                ingredient5:
                <asp:Label ID="ingredient5Label" runat="server" Text='<%# Bind("ingredient5") %>' />
                <br />
                preparation:
                <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                <br />
                notes:
                <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
