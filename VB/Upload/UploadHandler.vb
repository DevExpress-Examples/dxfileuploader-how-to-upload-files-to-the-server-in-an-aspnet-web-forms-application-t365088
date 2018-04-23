Imports System
Imports System.Web
Imports System.Web.SessionState

Namespace Upload
    Public Class UploadHandler
        Implements IHttpHandler

        Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
            Get
                Return True
            End Get
        End Property

        Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
            SaveFilesHelper.Save(context)
        End Sub
    End Class
End Namespace
