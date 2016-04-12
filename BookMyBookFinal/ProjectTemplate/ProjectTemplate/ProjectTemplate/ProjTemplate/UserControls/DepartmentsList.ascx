<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DepartmentsList.ascx.cs" Inherits="DepartmentsList" %>
<asp:DataList ID="list" runat="server" Width="250px" style="background-color: #fafc03;">
  <ItemTemplate>
      &nbsp;<asp:HyperLink 
      ID="HyperLink1" 
      Runat="server" 
      NavigateUrl='<%# "../Catalog.aspx?DepartmentID=" + Eval("DepartmentID")%>'
      Text='<%# Eval("Name") %>'
      ToolTip='<%# Eval("Description") %>'>
    </asp:HyperLink>
      <br />
 </ItemTemplate>
  <HeaderTemplate>
    Products
  </HeaderTemplate>
  <HeaderStyle CssClass="DepartmentListHead" />
</asp:DataList>
