<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Upload.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="http://cdn3.devexpress.com/jslib/15.2.7/css/dx.common.css" />
    <link rel="stylesheet" type="text/css" href="http://cdn3.devexpress.com/jslib/15.2.7/css/dx.light.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/globalize/0.1.1/globalize.min.js"></script>
    <script type="text/javascript" src="http://cdn3.devexpress.com/jslib/15.2.7/js/dx.webappjs.js"></script>
</head>
<body>

    Http Handler Uploading:
    <div id="uploadContainer"></div>

    Form Submit Uploading:
    <form id="form1" enctype="multipart/form-data" runat="server">
        <div id="formUploadContainer"></div>
        <input type="submit" />
    </form>

    <script type="text/javascript">
        $("#uploadContainer").dxFileUploader({
            buttonText: 'Select file',
            labelText: 'Drop file here',
            multiple: true,
            accept: 'image/*',
            uploadUrl: 'http://localhost:62539/Uploader.ashx'
        });

        $("#formUploadContainer").dxFileUploader({
            buttonText: 'Select file',
            labelText: 'Drop file here',
            multiple: true,
            accept: 'image/*',
            uploadMode: 'useForm'
        });
    </script>
</body>
</html>
