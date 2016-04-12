<%@ Page Title="Rent" Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true" CodeFile="Rent.aspx.cs" Inherits="Rent"%>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="contentPlaceHolder">
   
    <h2>Checkout</h2>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First name</asp:Label>
            
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                    CssClass="text-danger" ErrorMessage="Field cannot be empty." />
        </div>
    <br />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label">Last name</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" ID="LastName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                    CssClass="text-danger" ErrorMessage="Field cannot be empty." />
        </div>
    <br />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="EmailId" CssClass="col-md-2 control-label">Email ID</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" ID="EmailId" CssClass="form-control" />
                <%--<asp:RequiredFieldValidator runat="server" 
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailId"
                    CssClass="text-danger" ErrorMessage="Please enter valid Email ID." />--%>
                <asp:RequiredFieldValidator runat="server"
              ErrorMessage="Field cannot be empty" ControlToValidate="EmailId"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Please Enter Valid Email ID"
                    ControlToValidate="EmailId"
                    CssClass="text-danger"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
        </div>
    
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Credit" CssClass="col-md-2 control-label">Credit Card No.</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" ID="Credit" CssClass="form-control" />
                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="Credit"
                    CssClass="text-danger" ErrorMessage="Field cannot be empty." MaxLength="16" ValidateExpression="^[0-9]+$"/>--%>
       
        <asp:RegularExpressionValidator ID="RegularExpresphone1" ValidationGroup="Credit" Display="Dynamic"
ControlToValidate="Credit" runat="server" ErrorMessage="Enter Valid Credit Card Number."
SetFocusOnError="True" ValidationExpression="^[0-9]{16}$"></asp:RegularExpressionValidator>
         </div>
    <br />
    <div class="form-group">
                &nbsp;<asp:Label ID="Issue" runat="server" CssClass="col-md-2 control-label">Issue</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem value="null">MM</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
        
                 &nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem value="null">YY</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                 <asp:Label runat="server" ID="ExpiryDate" CssClass="col-md-2 control-label">Expiry</asp:Label>
    &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem value="null">MM</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
                 &nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem value="null">YY</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
                <asp:ListItem>2021</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
                <asp:ListItem>2027</asp:ListItem>
                <asp:ListItem>2028</asp:ListItem>
                <asp:ListItem>2029</asp:ListItem>
            </asp:DropDownList>
    </div>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownlist1" InitialValue="null"
                    ErrorMessage="Issued month required." /><br />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownlist2" InitialValue="null"
                    ErrorMessage="Issued year required." /><br />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownlist3" InitialValue="null"
                    ErrorMessage="Expiry month required." /><br />
    <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownlist4" InitialValue="null"
                    ErrorMessage="Expiry year required." /><br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Rent" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="order" runat="server" Text="The link to your eBook has been emailed to you. <br>Note: the link will expire in 30 days from now." Visible="false" ForeColor="Green"/>
</asp:Content>