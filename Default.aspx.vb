
Partial Class SubirMultiplesArchivos_Default
    Inherits System.Web.UI.Page

    Protected Sub btnUpload_Click(sender As Object, e As EventArgs) Handles btnUpload.Click
        Try
            'Get the HttpFileCollection
            Dim hfCollection As HttpFileCollection = Request.Files
            For i As Integer = 0 To hfCollection.Count - 1
                'Get the specific HttpPostedFile by index
                Dim hPostedFile As HttpPostedFile = hfCollection(i)
                If hPostedFile.ContentLength > 0 Then
                    'Upload/save to the server
                    hPostedFile.SaveAs(Server.MapPath("~/UploadFiles/") & "\" & System.IO.Path.GetFileName(hPostedFile.FileName))

                    'Report the file was uploaded - you can customize this part -
                    Response.Write((("<b>File: </b>" & hPostedFile.FileName & " <b>Size:</b> ") & hPostedFile.ContentLength & " <b>Type:</b> ") & hPostedFile.ContentType & " Uploaded Successfully <br/>")
                End If
            Next
            'TOOD: report if a error was fired.
        Catch ex As Exception

        End Try
    End Sub
End Class
