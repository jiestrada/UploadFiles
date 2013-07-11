<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="SubirMultiplesArchivos_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="Js/jquery-1.3.2.js"></script>
    <script src="Js/jquery.MultiFile.js"></script>
    <style type="text/css">
        .MultiFile-label a {
            width: 50px;
            height: 30px;
            background-color: #fb4141;
            color: #FFF;
            border: 0;
            padding: 3px 7px;
            text-decoration: none;
        }

            .MultiFile-label a:hover {
                width: 50px;
                height: 30px;
                background-color: red;
                color: #e5e5e5;
                border: 0;
                padding: 3px 7px;
                text-decoration: none;
            }

        .MultiFile-list {
            height: 300px;
            width: 300px;
            padding: 10px 16px;
            border: dashed silver 1px;
            background-color: #f9f4f4;
        }

        .MultiFile-label {
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 10px;
        }

        .Multifile-UploadAllButton {
            width: 75px;
            height: 30px;
            background-color: #6262e9;
            color: #FFF;
            border: 0;
            text-decoration: none;
            text-align: center;
        }

            .Multifile-UploadAllButton:hover {
                width: 75px;
                height: 30px;
                background-color: #2f2fe7;
                color: #e5e5e5;
                border: 0;
                text-decoration: none;
                text-align: center;
                cursor: pointer;
            }

        .Multifile-UploadAll-div-Button {
            text-align: right;
        }

        .Multifile-vk-panel {
            width: 335px;
            height: 350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="Multifile-vk-panel">
                <div>
                    <asp:FileUpload ID="FileUploadVKSample" runat="server" class="multi" accept="gif|jpg|png|bmp" maxlength="7" />
                </div>
                <div class="Multifile-UploadAll-div-Button">
                    <asp:Button ID="btnUpload" runat="server" Text="Upload All" CssClass="Multifile-UploadAllButton" OnClick="btnUpload_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
