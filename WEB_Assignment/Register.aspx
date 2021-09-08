<%@ Page Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WEB_Assignment.Register" %>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style2" Width="100%">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Align="center" BorderColor="#FF3131" BorderStyle="Ridge" BorderWidth="4px" CssClass="auto-style3" Height="366px" Width="466px" >
            <TextBoxStyle BackColor="Transparent" BorderColor="#FF3131" BorderStyle="Ridge" />
            <TitleTextStyle Font-Size="X-Large" />
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style2 {
        text-align: left;
    }
    .auto-style3 {
        color: #FFFFFF;
    }
</style>
</asp:Content>

