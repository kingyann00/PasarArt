<%@ Page Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="ArtGallery.aspx.cs" Inherits="WEB_Assignment.ArtGallery"  %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta charset="UTF-8">
    <link rel="stylesheet" href="./Css/Artgallery.css">
    
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Slabo+27px|Yesteryear'>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css'>
    


        <div class="wrapper " >

            <div class="header">
                
                <h1 class="header__title" style="color: #ffffff;"><img class="header_logo" src="Picture/Logo.png" />   Ong9 Art Gallery </h1>

            </div>


            <div class="cards">
                <asp:Repeater ID="Repeater1" runat="server"  >
                    <ItemTemplate>

                        <div class=" card [ is-collapsed ] ">

                            <div class="card__inner [ js-expander ]">

								 <asp:Image  ImageUrl='<%# Eval("Artworkpath") %>' runat="server" height="200px" Width="200px" ImageAlign="Middle" />
                               
                            </div>
                            <p style="font-size: Large; width: auto; color: white; text-transform:uppercase;">Artwork Name : <strong> <%# Eval("Artworkname") %></strong></p>
                            <p style=" font-size: large;color: white; text-transform:uppercase;">Price : <strong> <%# Eval("ArtWorkPrice")%></strong> </p>
                            <div class="card__expander">

                                 <i class="fa fa-close [ js-collapser ]"></i>

                                <div class="image">
                                     <asp:Image ID="img" ImageUrl='<%# Eval("Artworkpath") %>' runat="server"  Width="300px" ImageAlign="Middle" />
                                   
                                </div>

                                <div class="description">
                                    <p style="font-size: large;">Artwork ID :<strong><asp:Label ID="lblImageId" runat="server" Text='<%# Eval("ImageId") %>'></asp:Label></strong></p>
									<p style="font-size: large;">Artwork Name :<strong><asp:Label ID="lblArtworkName" runat="server" Text='<%# Eval("Artworkname") %>'></asp:Label></strong></p>
									<p style="font-size: large;">Price :<strong><asp:Label ID="lblArtWorkPrice" runat="server" Text='<%# Eval("ArtWorkPrice") %>'></asp:Label></strong></p>
									<p style="font-size: large;">Artwork Quantity :<strong><asp:Label ID="lblArtworkQuantity" runat="server" Text='<%# Eval("ArtworkQuantity") %>'></asp:Label></strong></p>
									<p style="font-size: large;">Upload Date :<strong><asp:Label ID="lblUploadDate" runat="server" Text='<%# Eval("uploadDate") %>'></asp:Label></strong></p>
									<p style="font-size: large;">Description :<strong><asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>'></asp:Label></strong></p>
									<p style="font-size: large;">Artist Name :<strong><asp:Label ID="lblArtistName" runat="server" Text=<%# Eval("Artworkname") %>></asp:Label></strong></p>
                                    </div>
                               
                                <asp:Button ID="btnWishList" class="add-to-wish" OnClick="wishlist" Text="Add to wishlist"  runat="server" />
                                    

                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>





        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="./script.js"></script>



</asp:Content>
