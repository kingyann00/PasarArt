<%@ Page Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="FinalRegister.aspx.cs" Inherits="WEB_Assignment.FinalRegister" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
        }

        .auto-style11 {
            height: 255px;
        }

        .auto-style10 {
            width: 418px;
            height: 127px;
            margin-top: 0px;
        }

        .auto-style8 {
            height: 32px;
        }

        .auto-style4 {
            height: 33px;
        }

        section {
            display: flex;
            justify-content: center;
            align-items: center;
            border: 1px solid;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        .auto-style12 {
            color: #CCCCCC;
        }

        .auto-style16 {
            height: 50px;
        }

        .auto-style17 {
            width: 244px;
            height: 50px;
        }

        .auto-style18 {
            height: 50px;
            text-align: right;
        }
    </style>


    <section>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Align="center" CssClass="auto-style3" Height="275px" Width="466px" CancelButtonType="Link" CancelDestinationPageUrl="~/Homepage.aspx" ContinueDestinationPageUrl="~/Login.aspx">
            <CreateUserButtonStyle Font-Size="Large" BackColor="Transparent" ForeColor="White" />
            <TextBoxStyle BackColor="White" BorderColor="#FF3131" BorderStyle="Outset" />
            <TitleTextStyle Font-Size="X-Large" />
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                    <ContentTemplate>
                        <table style="font-size: 100%; height: 366px; width: 466px;">
                            <tr>
                                <td align="center" class="auto-style11" colspan="2" style="font-size: X-Large;">
                                    <img alt="logo" class="auto-style10" src="Picture/Logo.png" />
                                    <br />
                                    <br />
                                    Sign Up for Your New Account</td>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style16">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                </td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="UserName" runat="server" BackColor="Transparent" BorderColor="#999999" BorderStyle="Outset" CssClass="auto-style12"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style16">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="Password" runat="server" BackColor="Transparent" BorderColor="#999999" BorderStyle="Outset" TextMode="Password" CssClass="auto-style12"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style16">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                </td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="ConfirmPassword" runat="server" BackColor="Transparent" BorderColor="#999999" BorderStyle="Outset" TextMode="Password" CssClass="auto-style12"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style16">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                </td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="Email" runat="server" BackColor="Transparent" BorderColor="#999999" BorderStyle="Outset" CssClass="auto-style12"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">
                                    <asp:Label ID="verify" runat="server" AssociatedControlID="verifyCode">Verification Code:</asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="verifyCode" runat="server" BackColor="Transparent" BorderColor="#999999" BorderStyle="Outset" CssClass="auto-style12"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">
                                    <asp:Label ID="userType" runat="server" AssociatedControlID="DropDownList1">User Type:</asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Transparent" CssClass="auto-style12">
                                        <asp:ListItem>Artist</asp:ListItem>
                                        <asp:ListItem>Customer</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style8" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style4" colspan="2" style="color: Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
            <CancelButtonStyle BackColor="White" BorderStyle="Outset" ForeColor="White" />
            <SideBarButtonStyle BackColor="Transparent" />
        </asp:CreateUserWizard>
    </section>
</asp:Content>








