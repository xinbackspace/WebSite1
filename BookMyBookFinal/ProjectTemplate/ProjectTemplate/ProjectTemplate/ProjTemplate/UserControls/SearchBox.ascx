<%@ Control Language="C#"  AutoEventWireup="true" CodeFile="SearchBox.ascx.cs" Inherits="SearchBox" %>
<table border="0" cellpadding="0" cellspacing="0" width="200px">
  <tr>
    <td>
      Search Here!
    </td>
  </tr>
  <tr>
    <td >
      <asp:TextBox ID="searchTextBox" Runat="server" Width="100px" CssClass="SearchBox" BorderStyle="Dotted" MaxLength="100" Height="16px" />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="85px">
            <asp:ListItem>Title</asp:ListItem>
            <asp:ListItem>Author</asp:ListItem>
            <asp:ListItem>PublicationDate</asp:ListItem>
            <asp:ListItem>ISBN</asp:ListItem>
        </asp:DropDownList>
      <asp:Button ID="goButton" Runat="server" CssClass="SearchBox" Text="Search" Width="60px" Height="21px" OnClick="goButton_Click" /><br />
   
    </td>
  </tr>
</table>
