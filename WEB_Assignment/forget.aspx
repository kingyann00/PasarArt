<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="WEB_Assignment.forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
                <MailDefinition From="noreply051325@gmail.com" Subject="Password Recovery">
                </MailDefinition>
            </asp:PasswordRecovery>
        </div>
    </form>
</body>
</html>
