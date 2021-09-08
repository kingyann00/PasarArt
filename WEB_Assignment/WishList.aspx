<%@ Page Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="WishList.aspx.cs" Inherits="WEB_Assignment.Wish_List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<asp:Repeater ID="Repeater1" runat="server">
			<ItemTemplate>
				<div class="size1of3">
					<table class="wishlistTable">
						<tr>
							<td style="width: 200px">
								<div class="wishListImage">
									<asp:Image ImageUrl='<%# Eval("artworkpath") %>' runat="server" Width="300px" ImageAlign="Middle" />

								</div>
							</td>
							<td style="width: 200px">
								<div class="wishListDesc">
									<table>

										<tr>
											<td>
												<b>Image Id: </b>
											</td>
											<td>
												<strong>
													<asp:Label runat="server" Text='<%# Eval("ImageId") %>'></asp:Label></strong>
											</td>
										</tr>
										<tr>
											<td>
												<b>Artwork Name: </b>
											</td>
											<td>
												<strong>
													<asp:Label ID="lblArtworkName" runat="server" Text='<%# Eval("Artworkname") %>'></asp:Label></strong>
											</td>
										</tr>
										<tr>
											<td>
												<b>Artwork Price: </b>
											</td>
											<td>
												<strong>
													<asp:Label ID="lblArtWorkPrice" runat="server" Text='<%# Eval("ArtWorkPrice") %>'></asp:Label></strong>
											</td>
										</tr>

									</table>
								</div>
							</td>
						</tr>
				</div>
				</table>

			</ItemTemplate>
		</asp:Repeater>
		<br style="clear: left;" />
	</div>
	<style type="text/css">
		.size1of3 {
			margin-top: 30px;
		}

		.wishlistTable {
			border: 2px solid #fff;
			box-shadow: 16px 17px 5px #1f1b24;
			background-color: rgba(112,112,112,0.5);
			height: 300px;
			width: 800px;
		}

		.wishListDesc {
			font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
			font-size: x-large;
			color: #fff;
		}

		.wishListImage {
			width: 50%;
			margin-left: 2%;
			margin-top: 2%;
			margin-bottom: 2%;
		}
	</style>
</asp:Content>

