
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("./Recipe.aspx")
    End Sub


    Protected Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        FormView1.Focus()
    End Sub
End Class
