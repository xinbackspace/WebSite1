<%@ Page Title="Register" Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="contentPlaceHolder">
    <h2>Register</h2>
    <p class="text-danger">
        <%--<asp:Literal runat="server" ID="ErrorMessage" />--%>
    </p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                    CssClass="text-danger" ErrorMessage="Field cannot be empty." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label">Last name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="LastName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                    CssClass="text-danger" ErrorMessage="Field cannot be empty." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="EmailId" CssClass="col-md-2 control-label">Email ID</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="EmailId" CssClass="form-control" />
                <%--<asp:RequiredFieldValidator runat="server" 
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailId"
                    CssClass="text-danger" ErrorMessage="Please enter valid Email ID." />--%>
                <asp:RequiredFieldValidator runat="server"
              ErrorMessage="*" ControlToValidate="EmailId"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Please Enter Valid Email ID"
                    ControlToValidate="EmailId"
                    CssClass="text-danger"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Field cannot be empty." />
            </div>
        </div>
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"/>
            <br />
                <br />
            <asp:Label ID="label1" runat="server" Text="Account has been registered... " Visible="false" ForeColor="Green"><asp:hyperlink runat="server" NavigateUrl="~/Account/Login.aspx">Login</asp:hyperlink></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>


