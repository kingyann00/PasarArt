<%@ Page Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="UploadArtWork.aspx.cs" Inherits="WEB_Assignment.UpdateArtWork" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section>
        <table style="font-size: 100%;" class="auto-style6">
            <tr>
                <td class="auto-style2" colspan="2">
                    <img alt="logo" class="auto-style1" src="Picture/Logo.png" /><br />
                    <br />
                    <span class="auto-style3">Upload Your Artwork At Here</span><br />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="fa-inverse">Artwork Name:</span></td>
                <td>
                    <asp:TextBox ID="artworkName" runat="server" BackColor="Transparent" BorderColor="#FF3131" BorderStyle="Outset" ForeColor="White" CssClass="fa-inverse"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="fa-inverse">Price(RM)</span>:</td>
                <td>
                    <asp:TextBox ID="price" runat="server" BackColor="Transparent" BorderColor="#FF3131" BorderStyle="Outset" ForeColor="White" CssClass="fa-inverse"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style8">
                    <span class="fa-inverse">Description:</span></td>
                <td class="auto-style8">
                    <asp:TextBox ID="desc" runat="server" BackColor="Transparent" BorderColor="#FF3131" BorderStyle="Outset" ForeColor="White" CssClass="fa-inverse"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="fa-inverse">Artwork Quantity:</span></td>
                <td>
                    <asp:TextBox ID="quantity" runat="server" BackColor="Transparent" BorderColor="#FF3131" BorderStyle="Outset" ForeColor="White" CssClass="fa-inverse"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="fa-inverse">Upload Artwork:</td>
                <td>

                    <img id="imgpreview" height="200" width="200" src="" style="border-width: 0px; visibility: hidden;" /><br />
                    &nbsp;<asp:FileUpload ID="FileImgsave" runat="server" onchange="showpreview(this);" CssClass="auto-style7" />
                </td>
            </tr>
            <tr>
                <td align="right" class="fa-inverse">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="fa-inverse">View Artwork</asp:HyperLink>

                </td>
            </tr>
            <tr>
                <td align="right" class="fa-inverse">&nbsp;</td>
                <td>
                    <asp:Button ID="Completbtn" runat="server" OnClick="Completbtn_Click" Text="Complete" BackColor="Transparent" CssClass="auto-style4" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">

                    <asp:Label ID="lblMessage" runat="server" CssClass="fa-inverse"></asp:Label>
                </td>
            </tr>
        </table>
        <br />

        <br />
        <br />
    </section>


    <link href="Css/MasterPageCss.css" rel="stylesheet" />



</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">

    <style type="text/css">
        .auto-style1 {
            width: 333px;
            height: 109px;
        }

        .auto-style2 {
            text-align: center;
        }

        .auto-style3 {
            color: #fff;
            font-size: x-large;
        }

        .auto-style4 {
            color: #fff;
            font-size: large;
        }

        section {
            display: flex;
            justify-content: center;
            align-items: center;
            border: 1px solid;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        .auto-style5 {
            color: #fff;
            text-align: center;
            height: 86px;
        }

        .auto-style6 {
            height: 475px;
            width: 606px;
        }

        .auto-style7 {
            color: #FF0000;
        }

        .auto-style8 {
            height: 44px;
        }
    </style>
</asp:Content>

