<%@ Page Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true"
  CodeFile="Product.aspx.cs" Inherits="Product" Title="Untitled Page" %>

<%@ Register Src="UserControls/ProductRecommendations.ascx" TagName="ProductRecommendations"
  TagPrefix="uc1" %>
<asp:Content ID="content" ContentPlaceHolderID="contentPlaceHolder" runat="Server">
    <br />
  <asp:Label CssClass="ProductTitle" ID="titleLabel" runat="server" Text="Label"></asp:Label>
  <br />
  <br />
  <asp:Image ID="productImage" runat="server" />
  <br />
  <asp:Label CssClass="ProductDescription" ID="descriptionLabel" runat="server" Text="Label"></asp:Label>
  <br />
  <br />
  <span class="ProductDescription">Price:</span>&nbsp;
  <asp:Label CssClass="ProductPrice" ID="priceLabel" runat="server" Text="Label" />
  <br />
  <asp:Button ID="addToCartButton" runat="server" Text="Add to Cart" CssClass="SmallButtonText" OnClick="addToCartButton_Click" />
  <asp:Button ID="continueShoppingButton" CssClass="SmallButtonText" runat="server" Text="Continue Shopping" OnClick="continueShoppingButton_Click" />
  <br />
    <br />
    <p><strong> * Book Preview</strong> </p>
     <div id="gridwithscroll" style="height:900px; width:580px; margin-left:auto;margin-right:auto; overflow: auto ; ">
    <asp:Image ID="Image1" runat="server" />
    <asp:Image ID="Image2" runat="server" />
    <asp:Image ID="Image3" runat="server" />
         </div>
  <br />
  </asp:Content>
