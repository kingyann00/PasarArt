<%@ Page Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WEB_Assignment.Final_Login" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        section {
            display: flex;
            justify-content: center;
            align-items: center;
            border: 1px solid;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        .auto-style1 {
            height: 366px;
        }

        .auto-style2 {
            width: 495px;
            height: 366px;
        }

        .auto-style3 {
            color: #CCCCCC;
        }

        .auto-style4 {
            width: 333px;
            height: 109px;
        }

        .auto-style5 {
            color: #00CCFF;
        }

        .auto-style6 {
            color: #FFFFFF;
        }

        .auto-style7 {
            text-align: left;
        }
    </style>


    <section class="auto-style1">
        <img src="Picture/Login_photo.jpg" class="auto-style2" /><asp:Login ID="Login1" runat="server" Height="366px" Width="400px" CssClass="auto-style3" DestinationPageUrl="~/Homepage.aspx">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0" style="height: 366px; width: 400px;">
                                <tr>
                                    <td align="center" colspan="2">
                                        <img alt="Logo" class="auto-style4" src="Picture/Logo.png" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" BackColor="Transparent" CssClass="auto-style6" ForeColor="#CCCCCC"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" BackColor="Transparent" TextMode="Password" ForeColor="#CCCCCC"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Don&#39;t Have an Account? <a href="FinalRegister.aspx"><span class="auto-style5">Click Here</span></a></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" BackColor="Transparent" BorderColor="Gray" BorderStyle="Solid" CommandName="Login" Text="Log In" ValidationGroup="Login1" Font-Size="Large" ForeColor="#CCCCCC" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
        &nbsp;
    </section>


</asp:Content>
