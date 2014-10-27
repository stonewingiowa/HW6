﻿
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim deletedRecipe As String = e.Values("recipe_name").ToString()

        lbl_deletedRecipe.Text = deletedRecipe & " has been deleted from the database."

        Response.AddHeader("REFRESH", "2;URL=./Default.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REFRESH", "2;URL=./Default.aspx")
    End Sub
End Class
