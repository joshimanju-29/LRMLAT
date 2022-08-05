<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="https://www.google.com/jsapi">
    </script>
    <script type="text/javascript">
        // Load the Google Transliterate API
        google.load("elements", "1", {
            packages: "transliteration"
        });

        function onLoad() {
            var options = {
                sourceLanguage:
                google.elements.transliteration.LanguageCode.ENGLISH,
                destinationLanguage:
                [google.elements.transliteration.LanguageCode.HINDI],
                shortcutKey: 'ctrl+e',
                transliterationEnabled: true
            };

            // Create an instance on TransliterationControl with the required
            // options.
            var control =
            new google.elements.transliteration.TransliterationControl(options);

            // Enable transliteration in the textbox with id
            // 'transliterateTextarea'.
            control.makeTransliteratable(['transliterateTextarea']);


        }
        google.setOnLoadCallback(onLoad);
    </script>
    <script type="text/javascript" src="js/loader.js"></script>
</head>
<body>
    <span>English to </span>Hindi<br>
    <form id="Form2" runat="server">
    <div>
        <asp:TextBox ID="transliterateTextarea" runat="server" TextMode="MultiLine" Rows="5"
            Columns="50" />
    </div>
    </form>
</body>
</html>
