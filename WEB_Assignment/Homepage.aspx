<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WEB_Assignment.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/MasterPageCss.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>
<body>

    <form id="form1" runat="server">
        <div class="dropdwn">
            <nav>
                <img class="logo" src="Picture/Logo.png" />
                <ul>
                    <li><a href="Homepage.aspx">Home</a></li>
                    <li><a href="ArtGallery.aspx">Gallery</a></li>
                    <li><a>Art Work<i class="fas fa-caret-down"></i></a>
                        <ul>
                            <li><a href="UploadArtWork.aspx">Upload Art Work</a></li>
                            <li><a href="UpdateArtWork.aspx">Update Art Work</a></li>
                        </ul>
                    </li>
                    <li><a href="PurchaseHistory.aspx">History</a></li>
                    <li><a href="WishList.aspx">Wish List</a></li>
                    <li><a>My Account<i class="fas fa-caret-down"></i></a>
                        <ul>
                            <li><a href="ManageAccount.aspx">Manage Account</a></li>
                            <li><a>
                                <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" LogoutPageUrl="~/Final_Login.aspx" />
                            </a></li>
                            <li><a href="FinalRegister.aspx">Sign Up</a></li>
                        </ul>
                    </li>

                </ul>
            </nav>
        </div>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <asp:Timer ID="Timer1" runat="server" Interval="1700" OnTick="Timer1_Tick1">
                </asp:Timer>
                <div class="topLeft">
                    <asp:Image ID="Image1" runat="server" Height=" 250px" Width="250px" />

                </div>

                <div class="topRight">
                    <asp:Image ID="Image2" runat="server" Height=" 250px" Width="250px" />
                </div>

                <div class="center">
                    <asp:Image ID="Image3" runat="server" Height=" 250px" Width="250px" />
                </div>

                <div class="btmLeft">
                    <asp:Image ID="Image4" runat="server" Height=" 250px" Width="250px" />
                </div>

                <div class="btmRight">
                    <asp:Image ID="Image5" runat="server" Height=" 250px" Width="250px" />
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>

<style type="text/css">
    .topLeft {
        position: absolute;
        margin-left: 15%;
        margin-top: 4%;
        border: 1px solid;
        box-shadow: 17px 16px 3px #1f1b24;
    }

    .topRight {
        z-index:0;
        position: absolute;
        margin-left: 65%;
        margin-top: 4%;
        border: 1px solid;
        box-shadow: 17px 16px 3px #1f1b24;
    }


    .center {
        position: absolute;
        margin-left: 40%;
        margin-top: 16%;
        border: 1px solid;
        box-shadow: 16px 17px 5px #1f1b24;
    }

    .btmRight {
        position: absolute;
        margin-left: 65%;
        margin-top: 24%;
        border: 1px solid;
        box-shadow: 17px 16px 3px #1f1b24;
    }

    .btmLeft {
        position: absolute;
        margin-left: 15%;
        margin-top: 24%;
        border: 1px solid;
        box-shadow: 17px 15px 3px #1f1b24;
    }
</style>
